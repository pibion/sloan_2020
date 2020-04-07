seq:
  - id: record
    type: srecord
    repeat: eos

enums:
  record_type:
    S0: header
    S1: address16
    S2: address24
    S3: address32

types:
  srecord:
    seq:
      - id: src_type
        type: str
        size: 2
        encoding: UTF-8
        enum: record_type

      - id: count
        type: u2

      - id: src_header
        type: u4
        if: src_type == S0
      - id: src_address16
        type: u4
        if: src_type == S1
      - id: src_address24
        type: u6
        if: src_type == S2
      - id: src_address32
        type: u8
        if: src_type == S3

      - id: data
        type: int
        size: count - 8 - 22

      - id: checksum
        type: int
        size: u2

      - id: terminator
        type: str
        size: 2
        encoding: UTF-8
