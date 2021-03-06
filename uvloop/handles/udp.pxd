cdef class UDPTransport(UVBaseTransport):
    cdef:
        object sock
        UVPoll poll
        object address
        object buffer

    cdef _init(self, Loop loop, object sock, object r_addr)

    cdef _on_read_ready(self)
    cdef _on_write_ready(self)

    @staticmethod
    cdef UDPTransport new(Loop loop, object sock, object r_addr)
