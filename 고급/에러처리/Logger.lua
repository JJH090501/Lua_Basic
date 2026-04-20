local _M = {}

function _M.err(msg)
    error("[ERROR] " .. msg)
end

function _M.warn(msg)
    print("[WARN] " .. msg)
end

function _M.info(msg)
    print("[INFO] " .. msg)
end

return _M