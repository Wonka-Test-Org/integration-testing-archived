pub fn add(a: u64, b: u64) -> u64 {
    a + b
}

pub fn multiply(a: u64, b: u64) -> u64 {
    a * b
}

pub fn is_even(value: u64) -> bool {
    value % 2 == 0
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_add() {
        assert_eq!(add(2, 3), 5);
    }

    #[test]
    fn test_multiply() {
        assert_eq!(multiply(4, 5), 20);
    }

    #[test]
    fn test_is_even_true() {
        assert!(is_even(8));
    }

    #[test]
    fn test_is_even_false() {
        assert!(!is_even(7));
    }
}
