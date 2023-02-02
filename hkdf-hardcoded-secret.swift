let password: Array<UInt8> = Array("s33krit".utf8)

// ruleid: hkdf-hardcoded-secret
let key = try HKDF(password: password, salt: salt, dkLen: 64, N: 16384, r: 8, p: 1).calculate()
// ruleid: hkdf-hardcoded-secret
try HKDF(password: "123", salt: salt, dkLen: 64, N: 16384, r: 8, p: 1).calculate()
// ok: hkdf-hardcoded-secret
try HKDF(password: config, salt: salt, dkLen: 64, N: 16384, r: 8, p: 1).calculate()