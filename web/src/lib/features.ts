// Switches for features that are built but not yet turned on.

/**
 * Email sign-in (magic links). Off for the pilot: Supabase's built-in email only sends a few
 * emails an hour, which real users would quickly exhaust. Turn on once we own a domain and
 * have connected a proper email service (e.g. Resend) in Supabase → Authentication → SMTP.
 */
export const EMAIL_SIGN_IN = false;
