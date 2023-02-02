let password: Array<UInt8> = Array("s33krit".utf8)
let salt: Array<UInt8> = Array("nacllcan".utf8)

// ruleid: pkcs5-hardcoded-secret
try PKCS5.PBKDF2(password: password, salt: salt, iterations: 4096, variant: .sha256).calculate()
// ok: pkcs5-hardcoded-secret
PKCS5.PBKDF2(password: password1, salt: salt, iterations: 4096, variant: .sha256).calculate()
// ruleid: pkcs5-hardcoded-secret
PKCS5.PBKDF2(password: "123", salt: salt, iterations: 4096, variant: .sha256).calculate()