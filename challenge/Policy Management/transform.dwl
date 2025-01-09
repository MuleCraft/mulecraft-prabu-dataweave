%dw 2.0
output application/json

/* Requirements:
 * Check if the policy number is not blank using isBlank
 * Convert holder's name to uppercase using upper
 * Determine if the premium is high (greater than 1000) using isDecimal and isEven
 * Count approved claims using find and filter logic
 * Count pending claims using find and filter logic
 * Extract coverage type directly from input
 * Find the maximum claim amount using maxBy
 *
 * Expected Output:
 * {
 *   "policyId": "INS-123456",
 *   "holderName": "JOHN DOE",
 *   "isPremiumHigh": true,
 *   "approvedClaimsCount": 1,
 *   "pendingClaimsCount": 1,
 *   "coverageType": "Comprehensive",
 *   "maxClaimAmount": 3000
 * }
 */
---
{
    "policyId": payload.policy.policyNumber,
    "holderName": upper(payload.policy.holder.name),
    "isPremiumHigh":  (payload.policy.holder.premium) > 1000,
    "approvedClaimsCount": sizeOf(payload.policy.claims filter ((item, index) -> item.status == "approved" )),
    "pendingClaimsCount": sizeOf(payload.policy.claims filter ((item, index) -> item.status == "pending" )),
    "coverageType": payload.policy.coverage."type",
    "maxClaimAmount": payload.policy.claims.amount maxBy ((item) -> item )


}










