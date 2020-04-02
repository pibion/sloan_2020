meta:
  id: SRECORD
  endian: le
  license: CC0-1.0
  ks-version: 0.8

seq:
  - id: record
    type: srecord
    repeat: eos

types:
  srecord:
    seq:
      - id: record_type
        type: u2

      - id: count
        type: u2

      - id: address
        type: u8

      - id: data
        type: int
        size: count - 8

      - id: terminator
        type: str
        size: 2
        encoding: UTF-8