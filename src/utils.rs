use crate::{DbPool, ProjectPooledConnection};
use diesel::result::{DatabaseErrorKind, Error as DieselError};

/// Executes a database operation in a blocking task.
///
/// This helper function handles the common pattern of:
/// 1. Spawning a blocking task
/// 2. Getting a database connection from the pool
/// 3. Executing the provided operation
///
/// # Type Parameters
/// * `F` - A closure type that:
///   - Takes a mutable reference to a pooled database connection
///   - Returns a `Result<T, DieselError>`
///   - Can be sent across thread boundaries (`Send`)
///   - Has a `'static` lifetime (lives for the entire program duration)
/// * `T` - The result type that:
///   - Can be sent across thread boundaries (`Send`)
///   - Has a `'static` lifetime
///
/// # Arguments
/// * `pool` - The database connection pool
/// * `operation` - The operation to execute with the database connection
///
/// # Returns
/// * `Result<T, DieselError>` - The result of the database operation
///
/// # Errors
/// This function will return a `DieselError` if:
/// * Failed to get a connection from the pool
/// * The provided operation returns an error
/// * The blocking task fails to complete (mapped from `JoinError`)
///
/// # Example
/// ```no-run
/// let result = execute_blocking_db_operation(pool, |conn| {
///     YourModel::your_operation(conn)
/// }).await;
/// ```
pub async fn execute_blocking_db_operation<F, T>(
    pool: DbPool,
    operation: F,
) -> Result<T, DieselError>
where
    F: FnOnce(&mut ProjectPooledConnection) -> Result<T, DieselError> + Send + 'static,
    T: Send + 'static,
{
    tokio::task::spawn_blocking(move || {
        let mut conn = pool.get().map_err(|e| {
            DieselError::DatabaseError(DatabaseErrorKind::Unknown, Box::new(e.to_string()))
        })?;
        operation(&mut conn)
    })
    .await
    .map_err(|e| {
        DieselError::DatabaseError(
            DatabaseErrorKind::Unknown,
            Box::new(format!("Task join error: {e}")),
        )
    })?
}
