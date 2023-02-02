let password: Array<UInt8> = Array("s33krit".utf8)
let salt: Array<UInt8> = Array("nacllcan".utf8)

// ruleid: blowfish-hardcoded-secret
try Blowfish(key: "hello", iv: "123")
// ruleid: blowfish-hardcoded-secret
try Blowfish(key: password, iv: "123")
// ok: blowfish-hardcoded-secret
try Blowfish(key: config, iv: "123")