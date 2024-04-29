# Content Model
## Homepage
- Section: Single
- Fields:
  - Headline
    - Plain Text
  - Tagline
    - Plain Text
  - Image
    - Asset (1)

## Adventures
- Section: Channel
- Fields:
  - Title
    - default
  - Short Description
    - Plain Text
  - Long Description
    - Plain Text
  - Images
    - Assets (1+)
  - Content Builder
    - Matrix field
      - Stats
        - Table field - name, value
      - CTA
        - Matrix field
          - CTA Text
            - Plain Text
          - CTA URL
            - URL
      - Rich Text
        - CKEditor field
