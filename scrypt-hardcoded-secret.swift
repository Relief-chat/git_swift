let password: Array<UInt8> = Array("s33krit".utf8)

// ruleid: scrypt-hardcoded-secret
let key = try Scrypt(password: password, salt: salt, dkLen: 64, N: 16384, r: 8, p: 1).calculate()
// ruleid: scrypt-hardcoded-secret
try Scrypt(password: "123", salt: salt, dkLen: 64, N: 16384, r: 8, p: 1).calculate()
// ok: scrypt-hardcoded-secret
try Scrypt(password: config, salt: salt, dkLen: 64, N: 16384, r: 8, p: 1).calculate()