.class public Lcom/badlogic/gdx/utils/JsonReader;
.super Ljava/lang/Object;


# static fields
.field private static final _json_actions:[B = null

.field private static final _json_eof_actions:[B = null

.field private static final _json_index_offsets:[S = null

.field private static final _json_key_offsets:[S = null

.field private static final _json_range_lengths:[B = null

.field private static final _json_single_lengths:[B = null

.field private static final _json_trans_actions:[B = null

.field private static final _json_trans_keys:[C = null

.field private static final _json_trans_targs:[B = null

.field static final json_en_array:I = 0x2a

.field static final json_en_main:I = 0x1

.field static final json_en_object:I = 0x9

.field static final json_error:I = 0x0

.field static final json_first_final:I = 0x45

.field static final json_start:I = 0x1


# instance fields
.field private current:Ljava/lang/Object;

.field private final elements:Lcom/badlogic/gdx/utils/Array;

.field private root:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_key_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/JsonReader;->init__json_eof_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method private static init__json_actions_0()[B
    .locals 8

    const/4 v7, 0x3

    const/16 v6, 0xb

    const/16 v5, 0x9

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v0, 0x3d

    new-array v0, v0, [B

    aput-byte v3, v0, v3

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v4, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v7, v0, v1

    aput-byte v3, v0, v5

    const/16 v1, 0xa

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    aput-byte v3, v0, v6

    const/16 v1, 0xc

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v5, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v6, v0, v1

    const/16 v1, 0x19

    aput-byte v4, v0, v1

    const/16 v1, 0x1b

    aput-byte v4, v0, v1

    const/16 v1, 0x1c

    aput-byte v4, v0, v1

    const/16 v1, 0x1e

    aput-byte v7, v0, v1

    const/16 v1, 0x1f

    aput-byte v4, v0, v1

    const/16 v1, 0x20

    aput-byte v7, v0, v1

    const/16 v1, 0x21

    aput-byte v5, v0, v1

    const/16 v1, 0x22

    aput-byte v4, v0, v1

    const/16 v1, 0x23

    aput-byte v7, v0, v1

    const/16 v1, 0x24

    aput-byte v6, v0, v1

    const/16 v1, 0x25

    aput-byte v4, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    aput-byte v5, v0, v1

    const/16 v1, 0x28

    aput-byte v4, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    aput-byte v6, v0, v1

    const/16 v1, 0x2b

    aput-byte v4, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    aput-byte v5, v0, v1

    const/16 v1, 0x2e

    aput-byte v4, v0, v1

    const/16 v1, 0x2f

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v6, v0, v1

    const/16 v1, 0x31

    aput-byte v4, v0, v1

    const/16 v1, 0x32

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    aput-byte v5, v0, v1

    const/16 v1, 0x34

    aput-byte v4, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    aput-byte v6, v0, v1

    const/16 v1, 0x37

    aput-byte v4, v0, v1

    const/16 v1, 0x38

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    aput-byte v5, v0, v1

    const/16 v1, 0x3a

    aput-byte v4, v0, v1

    const/16 v1, 0x3b

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    aput-byte v6, v0, v1

    return-object v0
.end method

.method private static init__json_eof_actions_0()[B
    .locals 4

    const/16 v2, 0x9

    const/4 v3, 0x7

    const/16 v0, 0x59

    new-array v0, v0, [B

    const/16 v1, 0x46

    aput-byte v3, v0, v1

    const/16 v1, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    aput-byte v3, v0, v1

    const/16 v1, 0x4b

    aput-byte v3, v0, v1

    const/16 v1, 0x4c

    aput-byte v3, v0, v1

    const/16 v1, 0x4d

    aput-byte v3, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    aput-byte v3, v0, v1

    const/16 v1, 0x50

    aput-byte v3, v0, v1

    const/16 v1, 0x51

    aput-byte v3, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    aput-byte v3, v0, v1

    const/16 v1, 0x54

    aput-byte v3, v0, v1

    const/16 v1, 0x55

    aput-byte v3, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private static init__json_index_offsets_0()[S
    .locals 8

    const/16 v7, 0x20

    const/16 v6, 0x1e

    const/16 v5, 0x15

    const/16 v4, 0x12

    const/16 v3, 0xf

    const/16 v0, 0x59

    new-array v0, v0, [S

    const/4 v1, 0x2

    aput-short v3, v0, v1

    const/4 v1, 0x3

    aput-short v4, v0, v1

    const/4 v1, 0x4

    aput-short v5, v0, v1

    const/4 v1, 0x5

    aput-short v6, v0, v1

    const/4 v1, 0x6

    aput-short v7, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x22

    aput-short v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x26

    aput-short v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x28

    aput-short v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x32

    aput-short v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x35

    aput-short v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x38

    aput-short v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x3c

    aput-short v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4b

    aput-short v2, v0, v1

    const/16 v1, 0x4e

    aput-short v1, v0, v3

    const/16 v1, 0x10

    const/16 v2, 0x51

    aput-short v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x56

    aput-short v2, v0, v1

    const/16 v1, 0x5f

    aput-short v1, v0, v4

    const/16 v1, 0x13

    const/16 v2, 0x66

    aput-short v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x6f

    aput-short v2, v0, v1

    const/16 v1, 0x76

    aput-short v1, v0, v5

    const/16 v1, 0x16

    const/16 v2, 0x78

    aput-short v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x81

    aput-short v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x83

    aput-short v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x8b

    aput-short v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x8f

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x91

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x97

    aput-short v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x9f

    aput-short v2, v0, v1

    const/16 v1, 0xa7

    aput-short v1, v0, v6

    const/16 v1, 0x1f

    const/16 v2, 0xaf

    aput-short v2, v0, v1

    const/16 v1, 0xb7

    aput-short v1, v0, v7

    const/16 v1, 0x21

    const/16 v2, 0xbc

    aput-short v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xc4

    aput-short v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xcc

    aput-short v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0xd4

    aput-short v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0xd9

    aput-short v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xe1

    aput-short v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0xe9

    aput-short v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xf1

    aput-short v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xf6

    aput-short v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xff

    aput-short v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x110

    aput-short v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x113

    aput-short v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x116

    aput-short v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x11b

    aput-short v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x12b

    aput-short v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x132

    aput-short v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x134

    aput-short v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x13d

    aput-short v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x13f

    aput-short v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x147

    aput-short v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x14b

    aput-short v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x14d

    aput-short v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x153

    aput-short v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x15b

    aput-short v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x163

    aput-short v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x16b

    aput-short v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x173

    aput-short v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x178

    aput-short v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x180

    aput-short v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x188

    aput-short v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x190

    aput-short v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x195

    aput-short v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x19d

    aput-short v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x1a5

    aput-short v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x1ad

    aput-short v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x1b2

    aput-short v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x1bb

    aput-short v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x1be

    aput-short v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x1c5

    aput-short v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x1cc

    aput-short v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x1d2

    aput-short v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x1d6

    aput-short v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x1de

    aput-short v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x1e6

    aput-short v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x1ee

    aput-short v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x1f6

    aput-short v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x1f9

    aput-short v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x201

    aput-short v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x209

    aput-short v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x211

    aput-short v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x214

    aput-short v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x21c

    aput-short v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x224

    aput-short v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x22c

    aput-short v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x22f

    aput-short v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x230

    aput-short v2, v0, v1

    return-object v0
.end method

.method private static init__json_key_offsets_0()[S
    .locals 8

    const/16 v7, 0x21

    const/16 v6, 0x1f

    const/16 v5, 0x16

    const/16 v4, 0x14

    const/16 v3, 0x12

    const/16 v0, 0x59

    new-array v0, v0, [S

    const/4 v1, 0x2

    aput-short v3, v0, v1

    const/4 v1, 0x3

    aput-short v4, v0, v1

    const/4 v1, 0x4

    aput-short v5, v0, v1

    const/4 v1, 0x5

    aput-short v6, v0, v1

    const/4 v1, 0x6

    aput-short v7, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x23

    aput-short v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x27

    aput-short v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x29

    aput-short v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x35

    aput-short v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x37

    aput-short v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x39

    aput-short v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x3d

    aput-short v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4f

    aput-short v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x51

    aput-short v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x53

    aput-short v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x58

    aput-short v2, v0, v1

    const/16 v1, 0x63

    aput-short v1, v0, v3

    const/16 v1, 0x13

    const/16 v2, 0x6a

    aput-short v2, v0, v1

    const/16 v1, 0x73

    aput-short v1, v0, v4

    const/16 v1, 0x15

    const/16 v2, 0x7a

    aput-short v2, v0, v1

    const/16 v1, 0x7c

    aput-short v1, v0, v5

    const/16 v1, 0x17

    const/16 v2, 0x86

    aput-short v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x88

    aput-short v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x91

    aput-short v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x95

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x97

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x9e

    aput-short v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xa6

    aput-short v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0xae

    aput-short v2, v0, v1

    const/16 v1, 0xb6

    aput-short v1, v0, v6

    const/16 v1, 0x20

    const/16 v2, 0xbe

    aput-short v2, v0, v1

    const/16 v1, 0xc3

    aput-short v1, v0, v7

    const/16 v1, 0x22

    const/16 v2, 0xcb

    aput-short v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xd3

    aput-short v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0xdb

    aput-short v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0xe0

    aput-short v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xe8

    aput-short v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0xf0

    aput-short v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0xf8

    aput-short v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xfd

    aput-short v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x106

    aput-short v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x11a

    aput-short v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x11c

    aput-short v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x11e

    aput-short v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x123

    aput-short v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x136

    aput-short v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x13d

    aput-short v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x13f

    aput-short v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x149

    aput-short v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x14b

    aput-short v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x154

    aput-short v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x158

    aput-short v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x15a

    aput-short v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x161

    aput-short v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x169

    aput-short v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x171

    aput-short v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x179

    aput-short v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x181

    aput-short v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x186

    aput-short v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x18e

    aput-short v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x196

    aput-short v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x19e

    aput-short v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x1a3

    aput-short v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x1ab

    aput-short v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x1b3

    aput-short v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x1bb

    aput-short v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x1c0

    aput-short v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x1c9

    aput-short v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x1cc

    aput-short v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x1d3

    aput-short v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x1db

    aput-short v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x1e2

    aput-short v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x1e7

    aput-short v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x1ef

    aput-short v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x1f7

    aput-short v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x1ff

    aput-short v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x207

    aput-short v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x20a

    aput-short v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x212

    aput-short v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x21a

    aput-short v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x222

    aput-short v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x225

    aput-short v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x22d

    aput-short v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x235

    aput-short v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x23d

    aput-short v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x240

    aput-short v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x240

    aput-short v2, v0, v1

    return-object v0
.end method

.method private static init__json_range_lengths_0()[B
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v0, 0x59

    new-array v0, v0, [B

    aput-byte v4, v0, v2

    aput-byte v2, v0, v4

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v5, v0, v1

    const/16 v1, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v4, v0, v1

    const/16 v1, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aput-byte v5, v0, v1

    const/16 v1, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    aput-byte v4, v0, v1

    const/16 v1, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    aput-byte v4, v0, v1

    const/16 v1, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    aput-byte v3, v0, v1

    const/16 v1, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    aput-byte v3, v0, v1

    const/16 v1, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    aput-byte v3, v0, v1

    const/16 v1, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    aput-byte v3, v0, v1

    const/16 v1, 0x48

    aput-byte v3, v0, v1

    const/16 v1, 0x49

    aput-byte v3, v0, v1

    const/16 v1, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private static init__json_single_lengths_0()[B
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x6

    const/16 v0, 0x59

    new-array v0, v0, [B

    const/16 v1, 0xa

    aput-byte v1, v0, v7

    aput-byte v4, v0, v4

    aput-byte v4, v0, v5

    const/4 v1, 0x4

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v4, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    aput-byte v4, v0, v1

    const/16 v1, 0xc

    aput-byte v4, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v4, v0, v1

    const/16 v1, 0xf

    aput-byte v4, v0, v1

    const/16 v1, 0x10

    aput-byte v5, v0, v1

    const/16 v1, 0x11

    aput-byte v6, v0, v1

    const/16 v1, 0x12

    aput-byte v6, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    aput-byte v6, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v6, v0, v1

    const/16 v1, 0x19

    aput-byte v4, v0, v1

    const/16 v1, 0x1b

    aput-byte v5, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v5, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v5, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v5, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    aput-byte v4, v0, v1

    const/16 v1, 0x2c

    aput-byte v4, v0, v1

    const/16 v1, 0x2d

    aput-byte v5, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    aput-byte v6, v0, v1

    const/16 v1, 0x31

    aput-byte v3, v0, v1

    const/16 v1, 0x33

    aput-byte v6, v0, v1

    const/16 v1, 0x34

    aput-byte v4, v0, v1

    const/16 v1, 0x36

    aput-byte v5, v0, v1

    const/16 v1, 0x37

    aput-byte v3, v0, v1

    const/16 v1, 0x38

    aput-byte v3, v0, v1

    const/16 v1, 0x39

    aput-byte v3, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v5, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v5, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x41

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v3, v0, v1

    const/16 v1, 0x43

    aput-byte v5, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    aput-byte v7, v0, v1

    const/16 v1, 0x46

    aput-byte v6, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    aput-byte v5, v0, v1

    const/16 v1, 0x49

    aput-byte v7, v0, v1

    const/16 v1, 0x4a

    aput-byte v3, v0, v1

    const/16 v1, 0x4b

    aput-byte v3, v0, v1

    const/16 v1, 0x4c

    aput-byte v3, v0, v1

    const/16 v1, 0x4d

    aput-byte v3, v0, v1

    const/16 v1, 0x4e

    aput-byte v7, v0, v1

    const/16 v1, 0x4f

    aput-byte v3, v0, v1

    const/16 v1, 0x50

    aput-byte v3, v0, v1

    const/16 v1, 0x51

    aput-byte v3, v0, v1

    const/16 v1, 0x52

    aput-byte v7, v0, v1

    const/16 v1, 0x53

    aput-byte v3, v0, v1

    const/16 v1, 0x54

    aput-byte v3, v0, v1

    const/16 v1, 0x55

    aput-byte v3, v0, v1

    const/16 v1, 0x56

    aput-byte v7, v0, v1

    return-object v0
.end method

.method private static init__json_trans_actions_0()[B
    .locals 8

    const/16 v7, 0x1f

    const/16 v6, 0x9

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x7

    const/16 v0, 0x232

    new-array v0, v0, [B

    const/4 v1, 0x2

    aput-byte v4, v0, v1

    aput-byte v4, v0, v5

    const/4 v1, 0x4

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v4, v0, v1

    const/4 v1, 0x6

    aput-byte v4, v0, v1

    aput-byte v4, v0, v3

    const/16 v1, 0x8

    aput-byte v4, v0, v1

    const/16 v1, 0x11

    aput-byte v1, v0, v6

    const/16 v1, 0xb

    aput-byte v4, v0, v1

    const/16 v1, 0xc

    aput-byte v4, v0, v1

    const/16 v1, 0xd

    aput-byte v4, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    aput-byte v4, v0, v1

    const/16 v1, 0x11

    aput-byte v4, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v5, v0, v1

    const/16 v1, 0x16

    aput-byte v5, v0, v1

    const/16 v1, 0x17

    aput-byte v5, v0, v1

    const/16 v1, 0x18

    aput-byte v5, v0, v1

    const/16 v1, 0x19

    aput-byte v5, v0, v1

    const/16 v1, 0x1a

    aput-byte v5, v0, v1

    const/16 v1, 0x1b

    aput-byte v5, v0, v1

    const/16 v1, 0x1c

    aput-byte v5, v0, v1

    const/16 v1, 0x2a

    aput-byte v4, v0, v1

    const/16 v1, 0x2c

    aput-byte v4, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    aput-byte v4, v0, v1

    const/16 v1, 0x30

    aput-byte v4, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    aput-byte v4, v0, v1

    const/16 v1, 0x34

    aput-byte v4, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v4, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    aput-byte v4, v0, v1

    const/16 v1, 0x42

    aput-byte v4, v0, v1

    const/16 v1, 0x43

    aput-byte v4, v0, v1

    const/16 v1, 0x44

    aput-byte v4, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    aput-byte v4, v0, v1

    const/16 v1, 0x48

    aput-byte v4, v0, v1

    const/16 v1, 0x49

    aput-byte v4, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    aput-byte v4, v0, v1

    const/16 v1, 0x4d

    aput-byte v4, v0, v1

    const/16 v1, 0x4e

    aput-byte v3, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    aput-byte v4, v0, v1

    const/16 v1, 0x59

    aput-byte v4, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    aput-byte v4, v0, v1

    const/16 v1, 0x5f

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    aput-byte v5, v0, v1

    const/16 v1, 0x67

    aput-byte v5, v0, v1

    const/16 v1, 0x68

    aput-byte v5, v0, v1

    const/16 v1, 0x69

    aput-byte v5, v0, v1

    const/16 v1, 0x6a

    aput-byte v5, v0, v1

    const/16 v1, 0x6b

    aput-byte v5, v0, v1

    const/16 v1, 0x6c

    aput-byte v5, v0, v1

    const/16 v1, 0x6d

    aput-byte v5, v0, v1

    const/16 v1, 0x6f

    aput-byte v3, v0, v1

    const/16 v1, 0x70

    aput-byte v3, v0, v1

    const/16 v1, 0x73

    aput-byte v7, v0, v1

    const/16 v1, 0x74

    aput-byte v3, v0, v1

    const/16 v1, 0x78

    aput-byte v6, v0, v1

    const/16 v1, 0x79

    aput-byte v6, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    aput-byte v6, v0, v1

    const/16 v1, 0x83

    aput-byte v6, v0, v1

    const/16 v1, 0x84

    aput-byte v6, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    aput-byte v6, v0, v1

    const/16 v1, 0x91

    aput-byte v6, v0, v1

    const/16 v1, 0x92

    aput-byte v6, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    aput-byte v6, v0, v1

    const/16 v1, 0x97

    aput-byte v3, v0, v1

    const/16 v1, 0x98

    aput-byte v3, v0, v1

    const/16 v1, 0x9c

    aput-byte v7, v0, v1

    const/16 v1, 0x9d

    aput-byte v3, v0, v1

    const/16 v1, 0x9f

    aput-byte v3, v0, v1

    const/16 v1, 0xa0

    aput-byte v3, v0, v1

    const/16 v1, 0xa4

    aput-byte v7, v0, v1

    const/16 v1, 0xa5

    aput-byte v3, v0, v1

    const/16 v1, 0xa7

    aput-byte v3, v0, v1

    const/16 v1, 0xa8

    aput-byte v3, v0, v1

    const/16 v1, 0xac

    aput-byte v7, v0, v1

    const/16 v1, 0xad

    aput-byte v3, v0, v1

    const/16 v1, 0xaf

    aput-byte v3, v0, v1

    const/16 v1, 0xb0

    aput-byte v3, v0, v1

    const/16 v1, 0xb4

    aput-byte v7, v0, v1

    const/16 v1, 0xb5

    aput-byte v3, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    aput-byte v3, v0, v1

    const/16 v1, 0xbd

    aput-byte v3, v0, v1

    const/16 v1, 0xc1

    aput-byte v7, v0, v1

    const/16 v1, 0xc2

    aput-byte v3, v0, v1

    const/16 v1, 0xc4

    aput-byte v3, v0, v1

    const/16 v1, 0xc5

    aput-byte v3, v0, v1

    const/16 v1, 0xc9

    aput-byte v7, v0, v1

    const/16 v1, 0xca

    aput-byte v3, v0, v1

    const/16 v1, 0xcc

    aput-byte v3, v0, v1

    const/16 v1, 0xcd

    aput-byte v3, v0, v1

    const/16 v1, 0xd1

    aput-byte v7, v0, v1

    const/16 v1, 0xd2

    aput-byte v3, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    aput-byte v3, v0, v1

    const/16 v1, 0xda

    aput-byte v3, v0, v1

    const/16 v1, 0xde

    aput-byte v7, v0, v1

    const/16 v1, 0xdf

    aput-byte v3, v0, v1

    const/16 v1, 0xe1

    aput-byte v3, v0, v1

    const/16 v1, 0xe2

    aput-byte v3, v0, v1

    const/16 v1, 0xe6

    aput-byte v7, v0, v1

    const/16 v1, 0xe7

    aput-byte v3, v0, v1

    const/16 v1, 0xe9

    aput-byte v3, v0, v1

    const/16 v1, 0xea

    aput-byte v3, v0, v1

    const/16 v1, 0xee

    aput-byte v7, v0, v1

    const/16 v1, 0xef

    aput-byte v3, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    aput-byte v5, v0, v1

    const/16 v1, 0xf7

    aput-byte v5, v0, v1

    const/16 v1, 0xf8

    aput-byte v5, v0, v1

    const/16 v1, 0xf9

    aput-byte v5, v0, v1

    const/16 v1, 0xfa

    aput-byte v5, v0, v1

    const/16 v1, 0xfb

    aput-byte v5, v0, v1

    const/16 v1, 0xfc

    aput-byte v5, v0, v1

    const/16 v1, 0xfd

    aput-byte v5, v0, v1

    const/16 v1, 0x101

    aput-byte v4, v0, v1

    const/16 v1, 0x103

    aput-byte v4, v0, v1

    const/16 v1, 0x104

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x105

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x106

    aput-byte v4, v0, v1

    const/16 v1, 0x107

    aput-byte v4, v0, v1

    const/16 v1, 0x108

    aput-byte v4, v0, v1

    const/16 v1, 0x109

    aput-byte v4, v0, v1

    const/16 v1, 0x10a

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x10c

    aput-byte v4, v0, v1

    const/16 v1, 0x10d

    aput-byte v4, v0, v1

    const/16 v1, 0x10e

    aput-byte v4, v0, v1

    const/16 v1, 0x110

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x111

    aput-byte v4, v0, v1

    const/16 v1, 0x112

    aput-byte v4, v0, v1

    const/16 v1, 0x113

    aput-byte v3, v0, v1

    const/16 v1, 0x118

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x11d

    aput-byte v4, v0, v1

    const/16 v1, 0x11e

    aput-byte v4, v0, v1

    const/16 v1, 0x11f

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x120

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x121

    aput-byte v4, v0, v1

    const/16 v1, 0x122

    aput-byte v4, v0, v1

    const/16 v1, 0x123

    aput-byte v4, v0, v1

    const/16 v1, 0x124

    aput-byte v4, v0, v1

    const/16 v1, 0x125

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x127

    aput-byte v4, v0, v1

    const/16 v1, 0x128

    aput-byte v4, v0, v1

    const/16 v1, 0x129

    aput-byte v4, v0, v1

    const/16 v1, 0x12b

    aput-byte v3, v0, v1

    const/16 v1, 0x12c

    aput-byte v3, v0, v1

    const/16 v1, 0x12e

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x130

    aput-byte v3, v0, v1

    const/16 v1, 0x134

    aput-byte v6, v0, v1

    const/16 v1, 0x135

    aput-byte v6, v0, v1

    const/16 v1, 0x138

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x13a

    aput-byte v6, v0, v1

    const/16 v1, 0x13f

    aput-byte v6, v0, v1

    const/16 v1, 0x140

    aput-byte v6, v0, v1

    const/16 v1, 0x142

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x144

    aput-byte v6, v0, v1

    const/16 v1, 0x14d

    aput-byte v6, v0, v1

    const/16 v1, 0x14e

    aput-byte v6, v0, v1

    const/16 v1, 0x14f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x150

    aput-byte v6, v0, v1

    const/16 v1, 0x153

    aput-byte v3, v0, v1

    const/16 v1, 0x154

    aput-byte v3, v0, v1

    const/16 v1, 0x156

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x159

    aput-byte v3, v0, v1

    const/16 v1, 0x15b

    aput-byte v3, v0, v1

    const/16 v1, 0x15c

    aput-byte v3, v0, v1

    const/16 v1, 0x15e

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x161

    aput-byte v3, v0, v1

    const/16 v1, 0x163

    aput-byte v3, v0, v1

    const/16 v1, 0x164

    aput-byte v3, v0, v1

    const/16 v1, 0x166

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x169

    aput-byte v3, v0, v1

    const/16 v1, 0x16b

    aput-byte v3, v0, v1

    const/16 v1, 0x16c

    aput-byte v3, v0, v1

    const/16 v1, 0x16e

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x171

    aput-byte v3, v0, v1

    const/16 v1, 0x173

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x174

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x175

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x176

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x178

    aput-byte v3, v0, v1

    const/16 v1, 0x179

    aput-byte v3, v0, v1

    const/16 v1, 0x17b

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x17e

    aput-byte v3, v0, v1

    const/16 v1, 0x180

    aput-byte v3, v0, v1

    const/16 v1, 0x181

    aput-byte v3, v0, v1

    const/16 v1, 0x183

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x186

    aput-byte v3, v0, v1

    const/16 v1, 0x188

    aput-byte v3, v0, v1

    const/16 v1, 0x189

    aput-byte v3, v0, v1

    const/16 v1, 0x18b

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x18e

    aput-byte v3, v0, v1

    const/16 v1, 0x190

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x191

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x192

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x193

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x195

    aput-byte v3, v0, v1

    const/16 v1, 0x196

    aput-byte v3, v0, v1

    const/16 v1, 0x198

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x19b

    aput-byte v3, v0, v1

    const/16 v1, 0x19d

    aput-byte v3, v0, v1

    const/16 v1, 0x19e

    aput-byte v3, v0, v1

    const/16 v1, 0x1a0

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x1a3

    aput-byte v3, v0, v1

    const/16 v1, 0x1a5

    aput-byte v3, v0, v1

    const/16 v1, 0x1a6

    aput-byte v3, v0, v1

    const/16 v1, 0x1a8

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x1ab

    aput-byte v3, v0, v1

    const/16 v1, 0x1ad

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x1ae

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x1af

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x1b0

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x1b2

    aput-byte v5, v0, v1

    const/16 v1, 0x1b3

    aput-byte v5, v0, v1

    const/16 v1, 0x1b4

    aput-byte v5, v0, v1

    const/16 v1, 0x1b5

    aput-byte v5, v0, v1

    const/16 v1, 0x1b6

    aput-byte v5, v0, v1

    const/16 v1, 0x1b7

    aput-byte v5, v0, v1

    const/16 v1, 0x1b8

    aput-byte v5, v0, v1

    const/16 v1, 0x1b9

    aput-byte v5, v0, v1

    const/16 v1, 0x1be

    aput-byte v3, v0, v1

    const/16 v1, 0x1c3

    aput-byte v3, v0, v1

    const/16 v1, 0x1c5

    aput-byte v6, v0, v1

    const/16 v1, 0x1c9

    aput-byte v6, v0, v1

    const/16 v1, 0x1cc

    aput-byte v6, v0, v1

    const/16 v1, 0x1cf

    aput-byte v6, v0, v1

    const/16 v1, 0x1d2

    aput-byte v6, v0, v1

    const/16 v1, 0x1d3

    aput-byte v6, v0, v1

    const/16 v1, 0x1d6

    aput-byte v3, v0, v1

    const/16 v1, 0x1dc

    aput-byte v3, v0, v1

    const/16 v1, 0x1de

    aput-byte v3, v0, v1

    const/16 v1, 0x1e4

    aput-byte v3, v0, v1

    const/16 v1, 0x1e6

    aput-byte v3, v0, v1

    const/16 v1, 0x1ec

    aput-byte v3, v0, v1

    const/16 v1, 0x1ee

    aput-byte v3, v0, v1

    const/16 v1, 0x1f4

    aput-byte v3, v0, v1

    const/16 v1, 0x1f6

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1f7

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1f9

    aput-byte v3, v0, v1

    const/16 v1, 0x1ff

    aput-byte v3, v0, v1

    const/16 v1, 0x201

    aput-byte v3, v0, v1

    const/16 v1, 0x207

    aput-byte v3, v0, v1

    const/16 v1, 0x209

    aput-byte v3, v0, v1

    const/16 v1, 0x20f

    aput-byte v3, v0, v1

    const/16 v1, 0x211

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x212

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x214

    aput-byte v3, v0, v1

    const/16 v1, 0x21a

    aput-byte v3, v0, v1

    const/16 v1, 0x21c

    aput-byte v3, v0, v1

    const/16 v1, 0x222

    aput-byte v3, v0, v1

    const/16 v1, 0x224

    aput-byte v3, v0, v1

    const/16 v1, 0x22a

    aput-byte v3, v0, v1

    const/16 v1, 0x22c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x22d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private static init__json_trans_keys_0()[C
    .locals 8

    const/16 v7, 0x5d

    const/16 v6, 0x2c

    const/16 v5, 0x20

    const/16 v4, 0xd

    const/16 v3, 0x9

    const/16 v0, 0x241

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char v5, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x24

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x5f

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x7b

    aput-char v1, v0, v3

    const/16 v1, 0xa

    aput-char v3, v0, v1

    const/16 v1, 0xb

    aput-char v4, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x39

    aput-char v1, v0, v4

    const/16 v1, 0xe

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x39

    aput-char v1, v0, v5

    const/16 v1, 0x21

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x29

    aput-char v5, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x24

    aput-char v2, v0, v1

    aput-char v6, v0, v6

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    aput-char v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x2f

    aput-char v3, v0, v1

    const/16 v1, 0x30

    aput-char v4, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x39

    aput-char v5, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x3b

    aput-char v3, v0, v1

    const/16 v1, 0x3c

    aput-char v4, v0, v1

    const/16 v1, 0x3d

    aput-char v5, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x24

    aput-char v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x5f

    aput-char v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    const/16 v1, 0x47

    aput-char v3, v0, v1

    const/16 v1, 0x48

    aput-char v4, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x53

    aput-char v5, v0, v1

    const/16 v1, 0x54

    aput-char v6, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x56

    aput-char v3, v0, v1

    const/16 v1, 0x57

    aput-char v4, v0, v1

    const/16 v1, 0x58

    aput-char v5, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x24

    aput-char v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x5f

    aput-char v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    aput-char v3, v0, v7

    const/16 v1, 0x5e

    aput-char v4, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x63

    aput-char v5, v0, v1

    const/16 v1, 0x64

    aput-char v6, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x66

    aput-char v7, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x68

    aput-char v3, v0, v1

    const/16 v1, 0x69

    aput-char v4, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x73

    aput-char v5, v0, v1

    const/16 v1, 0x74

    aput-char v6, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x76

    aput-char v7, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x78

    aput-char v3, v0, v1

    const/16 v1, 0x79

    aput-char v4, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x7c

    aput-char v5, v0, v1

    const/16 v1, 0x7d

    aput-char v6, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x82

    aput-char v3, v0, v1

    const/16 v1, 0x83

    aput-char v4, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x88

    aput-char v5, v0, v1

    const/16 v1, 0x89

    aput-char v6, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x8d

    aput-char v3, v0, v1

    const/16 v1, 0x8e

    aput-char v4, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x97

    aput-char v5, v0, v1

    const/16 v1, 0x98

    aput-char v6, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x9a

    aput-char v3, v0, v1

    const/16 v1, 0x9b

    aput-char v4, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x9e

    aput-char v5, v0, v1

    const/16 v1, 0x9f

    aput-char v6, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0xa1

    aput-char v7, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xa4

    aput-char v3, v0, v1

    const/16 v1, 0xa5

    aput-char v4, v0, v1

    const/16 v1, 0xa6

    aput-char v5, v0, v1

    const/16 v1, 0xa7

    aput-char v6, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0xa9

    aput-char v7, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xac

    aput-char v3, v0, v1

    const/16 v1, 0xad

    aput-char v4, v0, v1

    const/16 v1, 0xae

    aput-char v5, v0, v1

    const/16 v1, 0xaf

    aput-char v6, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0xb1

    aput-char v7, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xb4

    aput-char v3, v0, v1

    const/16 v1, 0xb5

    aput-char v4, v0, v1

    const/16 v1, 0xb6

    aput-char v5, v0, v1

    const/16 v1, 0xb7

    aput-char v6, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0xb9

    aput-char v7, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xbc

    aput-char v3, v0, v1

    const/16 v1, 0xbd

    aput-char v4, v0, v1

    const/16 v1, 0xbe

    aput-char v5, v0, v1

    const/16 v1, 0xbf

    aput-char v6, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xc1

    aput-char v3, v0, v1

    const/16 v1, 0xc2

    aput-char v4, v0, v1

    const/16 v1, 0xc3

    aput-char v5, v0, v1

    const/16 v1, 0xc4

    aput-char v6, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0xc6

    aput-char v7, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xc9

    aput-char v3, v0, v1

    const/16 v1, 0xca

    aput-char v4, v0, v1

    const/16 v1, 0xcb

    aput-char v5, v0, v1

    const/16 v1, 0xcc

    aput-char v6, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0xce

    aput-char v7, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xd1

    aput-char v3, v0, v1

    const/16 v1, 0xd2

    aput-char v4, v0, v1

    const/16 v1, 0xd3

    aput-char v5, v0, v1

    const/16 v1, 0xd4

    aput-char v6, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0xd6

    aput-char v7, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xd9

    aput-char v3, v0, v1

    const/16 v1, 0xda

    aput-char v4, v0, v1

    const/16 v1, 0xdb

    aput-char v5, v0, v1

    const/16 v1, 0xdc

    aput-char v6, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xde

    aput-char v3, v0, v1

    const/16 v1, 0xdf

    aput-char v4, v0, v1

    const/16 v1, 0xe0

    aput-char v5, v0, v1

    const/16 v1, 0xe1

    aput-char v6, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0xe3

    aput-char v7, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xe6

    aput-char v3, v0, v1

    const/16 v1, 0xe7

    aput-char v4, v0, v1

    const/16 v1, 0xe8

    aput-char v5, v0, v1

    const/16 v1, 0xe9

    aput-char v6, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0xeb

    aput-char v7, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xee

    aput-char v3, v0, v1

    const/16 v1, 0xef

    aput-char v4, v0, v1

    const/16 v1, 0xf0

    aput-char v5, v0, v1

    const/16 v1, 0xf1

    aput-char v6, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0xf3

    aput-char v7, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xf6

    aput-char v3, v0, v1

    const/16 v1, 0xf7

    aput-char v4, v0, v1

    const/16 v1, 0xf8

    aput-char v5, v0, v1

    const/16 v1, 0xf9

    aput-char v6, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0xfb

    aput-char v3, v0, v1

    const/16 v1, 0xfc

    aput-char v4, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x100

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0x101

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x102

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x103

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x104

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x105

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x106

    aput-char v5, v0, v1

    const/16 v1, 0x107

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x108

    const/16 v2, 0x24

    aput-char v2, v0, v1

    const/16 v1, 0x109

    aput-char v6, v0, v1

    const/16 v1, 0x10a

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x10b

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    const/16 v1, 0x10c

    aput-char v7, v0, v1

    const/16 v1, 0x10d

    const/16 v2, 0x5f

    aput-char v2, v0, v1

    const/16 v1, 0x10e

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x10f

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x110

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x111

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    const/16 v1, 0x112

    aput-char v3, v0, v1

    const/16 v1, 0x113

    aput-char v4, v0, v1

    const/16 v1, 0x114

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x115

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x116

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x117

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x118

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x119

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x11a

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x11b

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x11c

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x11d

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x11e

    aput-char v5, v0, v1

    const/16 v1, 0x11f

    aput-char v6, v0, v1

    const/16 v1, 0x120

    aput-char v7, v0, v1

    const/16 v1, 0x121

    aput-char v3, v0, v1

    const/16 v1, 0x122

    aput-char v4, v0, v1

    const/16 v1, 0x123

    aput-char v5, v0, v1

    const/16 v1, 0x124

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x125

    const/16 v2, 0x24

    aput-char v2, v0, v1

    const/16 v1, 0x126

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x127

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    const/16 v1, 0x128

    aput-char v7, v0, v1

    const/16 v1, 0x129

    const/16 v2, 0x5f

    aput-char v2, v0, v1

    const/16 v1, 0x12a

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x12b

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x12c

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x12d

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    const/16 v1, 0x12e

    aput-char v3, v0, v1

    const/16 v1, 0x12f

    aput-char v4, v0, v1

    const/16 v1, 0x130

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x131

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x132

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x133

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x134

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x135

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x136

    aput-char v5, v0, v1

    const/16 v1, 0x137

    aput-char v6, v0, v1

    const/16 v1, 0x138

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x139

    aput-char v7, v0, v1

    const/16 v1, 0x13a

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x13b

    aput-char v3, v0, v1

    const/16 v1, 0x13c

    aput-char v4, v0, v1

    const/16 v1, 0x13d

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x13e

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x13f

    aput-char v5, v0, v1

    const/16 v1, 0x140

    aput-char v6, v0, v1

    const/16 v1, 0x141

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    const/16 v1, 0x142

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x143

    aput-char v7, v0, v1

    const/16 v1, 0x144

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x145

    aput-char v3, v0, v1

    const/16 v1, 0x146

    aput-char v4, v0, v1

    const/16 v1, 0x147

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x148

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x149

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x14a

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x14b

    aput-char v5, v0, v1

    const/16 v1, 0x14c

    aput-char v6, v0, v1

    const/16 v1, 0x14d

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x14e

    aput-char v7, v0, v1

    const/16 v1, 0x14f

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x150

    aput-char v3, v0, v1

    const/16 v1, 0x151

    aput-char v4, v0, v1

    const/16 v1, 0x152

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x153

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x154

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    const/16 v1, 0x155

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x156

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x157

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x158

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x159

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x15a

    aput-char v5, v0, v1

    const/16 v1, 0x15b

    aput-char v6, v0, v1

    const/16 v1, 0x15c

    aput-char v7, v0, v1

    const/16 v1, 0x15d

    aput-char v3, v0, v1

    const/16 v1, 0x15e

    aput-char v4, v0, v1

    const/16 v1, 0x15f

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x160

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x161

    aput-char v5, v0, v1

    const/16 v1, 0x162

    aput-char v6, v0, v1

    const/16 v1, 0x163

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x164

    aput-char v7, v0, v1

    const/16 v1, 0x165

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x166

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x167

    aput-char v3, v0, v1

    const/16 v1, 0x168

    aput-char v4, v0, v1

    const/16 v1, 0x169

    aput-char v5, v0, v1

    const/16 v1, 0x16a

    aput-char v6, v0, v1

    const/16 v1, 0x16b

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x16c

    aput-char v7, v0, v1

    const/16 v1, 0x16d

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x16e

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x16f

    aput-char v3, v0, v1

    const/16 v1, 0x170

    aput-char v4, v0, v1

    const/16 v1, 0x171

    aput-char v5, v0, v1

    const/16 v1, 0x172

    aput-char v6, v0, v1

    const/16 v1, 0x173

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x174

    aput-char v7, v0, v1

    const/16 v1, 0x175

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x176

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x177

    aput-char v3, v0, v1

    const/16 v1, 0x178

    aput-char v4, v0, v1

    const/16 v1, 0x179

    aput-char v5, v0, v1

    const/16 v1, 0x17a

    aput-char v6, v0, v1

    const/16 v1, 0x17b

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x17c

    aput-char v7, v0, v1

    const/16 v1, 0x17d

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x17e

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x17f

    aput-char v3, v0, v1

    const/16 v1, 0x180

    aput-char v4, v0, v1

    const/16 v1, 0x181

    aput-char v5, v0, v1

    const/16 v1, 0x182

    aput-char v6, v0, v1

    const/16 v1, 0x183

    aput-char v7, v0, v1

    const/16 v1, 0x184

    aput-char v3, v0, v1

    const/16 v1, 0x185

    aput-char v4, v0, v1

    const/16 v1, 0x186

    aput-char v5, v0, v1

    const/16 v1, 0x187

    aput-char v6, v0, v1

    const/16 v1, 0x188

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x189

    aput-char v7, v0, v1

    const/16 v1, 0x18a

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x18b

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x18c

    aput-char v3, v0, v1

    const/16 v1, 0x18d

    aput-char v4, v0, v1

    const/16 v1, 0x18e

    aput-char v5, v0, v1

    const/16 v1, 0x18f

    aput-char v6, v0, v1

    const/16 v1, 0x190

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x191

    aput-char v7, v0, v1

    const/16 v1, 0x192

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x193

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x194

    aput-char v3, v0, v1

    const/16 v1, 0x195

    aput-char v4, v0, v1

    const/16 v1, 0x196

    aput-char v5, v0, v1

    const/16 v1, 0x197

    aput-char v6, v0, v1

    const/16 v1, 0x198

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x199

    aput-char v7, v0, v1

    const/16 v1, 0x19a

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x19b

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x19c

    aput-char v3, v0, v1

    const/16 v1, 0x19d

    aput-char v4, v0, v1

    const/16 v1, 0x19e

    aput-char v5, v0, v1

    const/16 v1, 0x19f

    aput-char v6, v0, v1

    const/16 v1, 0x1a0

    aput-char v7, v0, v1

    const/16 v1, 0x1a1

    aput-char v3, v0, v1

    const/16 v1, 0x1a2

    aput-char v4, v0, v1

    const/16 v1, 0x1a3

    aput-char v5, v0, v1

    const/16 v1, 0x1a4

    aput-char v6, v0, v1

    const/16 v1, 0x1a5

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x1a6

    aput-char v7, v0, v1

    const/16 v1, 0x1a7

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x1a8

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x1a9

    aput-char v3, v0, v1

    const/16 v1, 0x1aa

    aput-char v4, v0, v1

    const/16 v1, 0x1ab

    aput-char v5, v0, v1

    const/16 v1, 0x1ac

    aput-char v6, v0, v1

    const/16 v1, 0x1ad

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x1ae

    aput-char v7, v0, v1

    const/16 v1, 0x1af

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x1b0

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x1b1

    aput-char v3, v0, v1

    const/16 v1, 0x1b2

    aput-char v4, v0, v1

    const/16 v1, 0x1b3

    aput-char v5, v0, v1

    const/16 v1, 0x1b4

    aput-char v6, v0, v1

    const/16 v1, 0x1b5

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x1b6

    aput-char v7, v0, v1

    const/16 v1, 0x1b7

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x1b8

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x1b9

    aput-char v3, v0, v1

    const/16 v1, 0x1ba

    aput-char v4, v0, v1

    const/16 v1, 0x1bb

    aput-char v5, v0, v1

    const/16 v1, 0x1bc

    aput-char v6, v0, v1

    const/16 v1, 0x1bd

    aput-char v7, v0, v1

    const/16 v1, 0x1be

    aput-char v3, v0, v1

    const/16 v1, 0x1bf

    aput-char v4, v0, v1

    const/16 v1, 0x1c0

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x1c1

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    const/16 v1, 0x1c2

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x1c3

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0x1c4

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x1c5

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x1c6

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x1c7

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x1c8

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x1c9

    aput-char v5, v0, v1

    const/16 v1, 0x1ca

    aput-char v3, v0, v1

    const/16 v1, 0x1cb

    aput-char v4, v0, v1

    const/16 v1, 0x1cc

    aput-char v5, v0, v1

    const/16 v1, 0x1cd

    aput-char v6, v0, v1

    const/16 v1, 0x1ce

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x1cf

    aput-char v7, v0, v1

    const/16 v1, 0x1d0

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x1d1

    aput-char v3, v0, v1

    const/16 v1, 0x1d2

    aput-char v4, v0, v1

    const/16 v1, 0x1d3

    aput-char v5, v0, v1

    const/16 v1, 0x1d4

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    const/16 v1, 0x1d5

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x1d6

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x1d7

    aput-char v3, v0, v1

    const/16 v1, 0x1d8

    aput-char v4, v0, v1

    const/16 v1, 0x1d9

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x1da

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x1db

    aput-char v5, v0, v1

    const/16 v1, 0x1dc

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x1dd

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x1de

    aput-char v3, v0, v1

    const/16 v1, 0x1df

    aput-char v4, v0, v1

    const/16 v1, 0x1e0

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x1e1

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x1e2

    aput-char v5, v0, v1

    const/16 v1, 0x1e3

    aput-char v3, v0, v1

    const/16 v1, 0x1e4

    aput-char v4, v0, v1

    const/16 v1, 0x1e5

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x1e6

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x1e7

    aput-char v5, v0, v1

    const/16 v1, 0x1e8

    aput-char v6, v0, v1

    const/16 v1, 0x1e9

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x1ea

    aput-char v7, v0, v1

    const/16 v1, 0x1eb

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x1ec

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x1ed

    aput-char v3, v0, v1

    const/16 v1, 0x1ee

    aput-char v4, v0, v1

    const/16 v1, 0x1ef

    aput-char v5, v0, v1

    const/16 v1, 0x1f0

    aput-char v6, v0, v1

    const/16 v1, 0x1f1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x1f2

    aput-char v7, v0, v1

    const/16 v1, 0x1f3

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x1f4

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x1f5

    aput-char v3, v0, v1

    const/16 v1, 0x1f6

    aput-char v4, v0, v1

    const/16 v1, 0x1f7

    aput-char v5, v0, v1

    const/16 v1, 0x1f8

    aput-char v6, v0, v1

    const/16 v1, 0x1f9

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x1fa

    aput-char v7, v0, v1

    const/16 v1, 0x1fb

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x1fc

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x1fd

    aput-char v3, v0, v1

    const/16 v1, 0x1fe

    aput-char v4, v0, v1

    const/16 v1, 0x1ff

    aput-char v5, v0, v1

    const/16 v1, 0x200

    aput-char v6, v0, v1

    const/16 v1, 0x201

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x202

    aput-char v7, v0, v1

    const/16 v1, 0x203

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x204

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x205

    aput-char v3, v0, v1

    const/16 v1, 0x206

    aput-char v4, v0, v1

    const/16 v1, 0x207

    aput-char v5, v0, v1

    const/16 v1, 0x208

    aput-char v3, v0, v1

    const/16 v1, 0x209

    aput-char v4, v0, v1

    const/16 v1, 0x20a

    aput-char v5, v0, v1

    const/16 v1, 0x20b

    aput-char v6, v0, v1

    const/16 v1, 0x20c

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x20d

    aput-char v7, v0, v1

    const/16 v1, 0x20e

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x20f

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x210

    aput-char v3, v0, v1

    const/16 v1, 0x211

    aput-char v4, v0, v1

    const/16 v1, 0x212

    aput-char v5, v0, v1

    const/16 v1, 0x213

    aput-char v6, v0, v1

    const/16 v1, 0x214

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x215

    aput-char v7, v0, v1

    const/16 v1, 0x216

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x217

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x218

    aput-char v3, v0, v1

    const/16 v1, 0x219

    aput-char v4, v0, v1

    const/16 v1, 0x21a

    aput-char v5, v0, v1

    const/16 v1, 0x21b

    aput-char v6, v0, v1

    const/16 v1, 0x21c

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x21d

    aput-char v7, v0, v1

    const/16 v1, 0x21e

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x21f

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x220

    aput-char v3, v0, v1

    const/16 v1, 0x221

    aput-char v4, v0, v1

    const/16 v1, 0x222

    aput-char v5, v0, v1

    const/16 v1, 0x223

    aput-char v3, v0, v1

    const/16 v1, 0x224

    aput-char v4, v0, v1

    const/16 v1, 0x225

    aput-char v5, v0, v1

    const/16 v1, 0x226

    aput-char v6, v0, v1

    const/16 v1, 0x227

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x228

    aput-char v7, v0, v1

    const/16 v1, 0x229

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x22a

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x22b

    aput-char v3, v0, v1

    const/16 v1, 0x22c

    aput-char v4, v0, v1

    const/16 v1, 0x22d

    aput-char v5, v0, v1

    const/16 v1, 0x22e

    aput-char v6, v0, v1

    const/16 v1, 0x22f

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x230

    aput-char v7, v0, v1

    const/16 v1, 0x231

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x232

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x233

    aput-char v3, v0, v1

    const/16 v1, 0x234

    aput-char v4, v0, v1

    const/16 v1, 0x235

    aput-char v5, v0, v1

    const/16 v1, 0x236

    aput-char v6, v0, v1

    const/16 v1, 0x237

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x238

    aput-char v7, v0, v1

    const/16 v1, 0x239

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x23a

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x23b

    aput-char v3, v0, v1

    const/16 v1, 0x23c

    aput-char v4, v0, v1

    const/16 v1, 0x23d

    aput-char v5, v0, v1

    const/16 v1, 0x23e

    aput-char v3, v0, v1

    const/16 v1, 0x23f

    aput-char v4, v0, v1

    return-object v0
.end method

.method private static init__json_trans_targs_0()[B
    .locals 8

    const/16 v7, 0x2e

    const/16 v6, 0x11

    const/16 v5, 0x45

    const/16 v4, 0x10

    const/16 v3, 0x2d

    const/16 v0, 0x232

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v5, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v5, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v5, v0, v1

    const/4 v1, 0x4

    aput-byte v1, v0, v4

    const/4 v1, 0x3

    aput-byte v1, v0, v6

    const/16 v1, 0x12

    aput-byte v5, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    aput-byte v6, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    aput-byte v1, v0, v3

    const/16 v1, 0x9

    aput-byte v1, v0, v7

    const/16 v1, 0x2f

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    aput-byte v4, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    aput-byte v4, v0, v5

    const/16 v1, 0x46

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    aput-byte v4, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    aput-byte v4, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    aput-byte v4, v0, v1

    const/16 v1, 0x52

    aput-byte v6, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    aput-byte v4, v0, v1

    const/16 v1, 0x56

    aput-byte v6, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v6, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    aput-byte v4, v0, v1

    const/16 v1, 0x70

    aput-byte v6, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    aput-byte v4, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    aput-byte v4, v0, v1

    const/16 v1, 0x79

    aput-byte v6, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    aput-byte v4, v0, v1

    const/16 v1, 0x84

    aput-byte v6, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    aput-byte v4, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    aput-byte v4, v0, v1

    const/16 v1, 0x92

    aput-byte v6, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    aput-byte v4, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    aput-byte v4, v0, v1

    const/16 v1, 0x98

    aput-byte v6, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    aput-byte v4, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    aput-byte v4, v0, v1

    const/16 v1, 0xa0

    aput-byte v6, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    aput-byte v4, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    aput-byte v4, v0, v1

    const/16 v1, 0xa8

    aput-byte v6, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    aput-byte v4, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    aput-byte v4, v0, v1

    const/16 v1, 0xb0

    aput-byte v6, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    aput-byte v4, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    aput-byte v4, v0, v1

    const/16 v1, 0xb8

    aput-byte v6, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    aput-byte v4, v0, v1

    const/16 v1, 0xbc

    aput-byte v4, v0, v1

    const/16 v1, 0xbd

    aput-byte v6, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    aput-byte v4, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    aput-byte v4, v0, v1

    const/16 v1, 0xc5

    aput-byte v6, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    aput-byte v4, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    aput-byte v4, v0, v1

    const/16 v1, 0xcd

    aput-byte v6, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    aput-byte v4, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    aput-byte v4, v0, v1

    const/16 v1, 0xd5

    aput-byte v6, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    aput-byte v4, v0, v1

    const/16 v1, 0xd9

    aput-byte v4, v0, v1

    const/16 v1, 0xda

    aput-byte v6, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    aput-byte v4, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    aput-byte v4, v0, v1

    const/16 v1, 0xe2

    aput-byte v6, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    aput-byte v4, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    aput-byte v4, v0, v1

    const/16 v1, 0xea

    aput-byte v6, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    aput-byte v4, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    aput-byte v4, v0, v1

    const/16 v1, 0xf2

    aput-byte v6, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    aput-byte v4, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x100

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x101

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x102

    aput-byte v7, v0, v1

    const/16 v1, 0x103

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x104

    aput-byte v3, v0, v1

    const/16 v1, 0x105

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x106

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x107

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x108

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x109

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x10a

    aput-byte v3, v0, v1

    const/16 v1, 0x10b

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x10c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x10d

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x10e

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x110

    aput-byte v3, v0, v1

    const/16 v1, 0x111

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x112

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x113

    aput-byte v3, v0, v1

    const/16 v1, 0x114

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x115

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x116

    aput-byte v3, v0, v1

    const/16 v1, 0x117

    aput-byte v7, v0, v1

    const/16 v1, 0x118

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x119

    aput-byte v3, v0, v1

    const/16 v1, 0x11b

    aput-byte v7, v0, v1

    const/16 v1, 0x11c

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x11d

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x11e

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x11f

    aput-byte v3, v0, v1

    const/16 v1, 0x120

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x121

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x122

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x123

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x124

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x125

    aput-byte v3, v0, v1

    const/16 v1, 0x126

    aput-byte v7, v0, v1

    const/16 v1, 0x127

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x128

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x129

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x12b

    aput-byte v3, v0, v1

    const/16 v1, 0x12c

    aput-byte v7, v0, v1

    const/16 v1, 0x12e

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x130

    aput-byte v3, v0, v1

    const/16 v1, 0x131

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x132

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x134

    aput-byte v3, v0, v1

    const/16 v1, 0x135

    aput-byte v7, v0, v1

    const/16 v1, 0x136

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x137

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x138

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x139

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x13a

    aput-byte v3, v0, v1

    const/16 v1, 0x13b

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x13d

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x13f

    aput-byte v3, v0, v1

    const/16 v1, 0x140

    aput-byte v7, v0, v1

    const/16 v1, 0x141

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x142

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x143

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x144

    aput-byte v3, v0, v1

    const/16 v1, 0x145

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x147

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x148

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x149

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x14b

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x14d

    aput-byte v3, v0, v1

    const/16 v1, 0x14e

    aput-byte v7, v0, v1

    const/16 v1, 0x14f

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x150

    aput-byte v3, v0, v1

    const/16 v1, 0x151

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x153

    aput-byte v3, v0, v1

    const/16 v1, 0x154

    aput-byte v7, v0, v1

    const/16 v1, 0x156

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x157

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x159

    aput-byte v3, v0, v1

    const/16 v1, 0x15a

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x15b

    aput-byte v3, v0, v1

    const/16 v1, 0x15c

    aput-byte v7, v0, v1

    const/16 v1, 0x15e

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x15f

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x161

    aput-byte v3, v0, v1

    const/16 v1, 0x162

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x163

    aput-byte v3, v0, v1

    const/16 v1, 0x164

    aput-byte v7, v0, v1

    const/16 v1, 0x166

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x167

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x169

    aput-byte v3, v0, v1

    const/16 v1, 0x16a

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x16b

    aput-byte v3, v0, v1

    const/16 v1, 0x16c

    aput-byte v7, v0, v1

    const/16 v1, 0x16e

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x16f

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x171

    aput-byte v3, v0, v1

    const/16 v1, 0x172

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x173

    aput-byte v3, v0, v1

    const/16 v1, 0x174

    aput-byte v7, v0, v1

    const/16 v1, 0x175

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x176

    aput-byte v3, v0, v1

    const/16 v1, 0x178

    aput-byte v3, v0, v1

    const/16 v1, 0x179

    aput-byte v7, v0, v1

    const/16 v1, 0x17b

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x17c

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x17e

    aput-byte v3, v0, v1

    const/16 v1, 0x17f

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x180

    aput-byte v3, v0, v1

    const/16 v1, 0x181

    aput-byte v7, v0, v1

    const/16 v1, 0x183

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x184

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x186

    aput-byte v3, v0, v1

    const/16 v1, 0x187

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x188

    aput-byte v3, v0, v1

    const/16 v1, 0x189

    aput-byte v7, v0, v1

    const/16 v1, 0x18b

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x18c

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x18e

    aput-byte v3, v0, v1

    const/16 v1, 0x18f

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x190

    aput-byte v3, v0, v1

    const/16 v1, 0x191

    aput-byte v7, v0, v1

    const/16 v1, 0x192

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x193

    aput-byte v3, v0, v1

    const/16 v1, 0x195

    aput-byte v3, v0, v1

    const/16 v1, 0x196

    aput-byte v7, v0, v1

    const/16 v1, 0x198

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x199

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x19b

    aput-byte v3, v0, v1

    const/16 v1, 0x19c

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x19d

    aput-byte v3, v0, v1

    const/16 v1, 0x19e

    aput-byte v7, v0, v1

    const/16 v1, 0x1a0

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x1a1

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x1a3

    aput-byte v3, v0, v1

    const/16 v1, 0x1a4

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x1a5

    aput-byte v3, v0, v1

    const/16 v1, 0x1a6

    aput-byte v7, v0, v1

    const/16 v1, 0x1a8

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x1a9

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x1ab

    aput-byte v3, v0, v1

    const/16 v1, 0x1ac

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x1ad

    aput-byte v3, v0, v1

    const/16 v1, 0x1ae

    aput-byte v7, v0, v1

    const/16 v1, 0x1af

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x1b0

    aput-byte v3, v0, v1

    const/16 v1, 0x1b2

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x1b3

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x1b4

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x1b5

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x1b6

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x1b7

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x1b8

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x1b9

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x1bb

    aput-byte v5, v0, v1

    const/16 v1, 0x1bc

    aput-byte v5, v0, v1

    const/16 v1, 0x1be

    aput-byte v5, v0, v1

    const/16 v1, 0x1c3

    aput-byte v5, v0, v1

    const/16 v1, 0x1c4

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x1c5

    aput-byte v5, v0, v1

    const/16 v1, 0x1c6

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x1c7

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x1c8

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x1c9

    aput-byte v5, v0, v1

    const/16 v1, 0x1ca

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x1cc

    aput-byte v5, v0, v1

    const/16 v1, 0x1cd

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x1ce

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x1cf

    aput-byte v5, v0, v1

    const/16 v1, 0x1d0

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x1d2

    aput-byte v5, v0, v1

    const/16 v1, 0x1d3

    aput-byte v5, v0, v1

    const/16 v1, 0x1d4

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x1d6

    aput-byte v5, v0, v1

    const/16 v1, 0x1da

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x1dc

    aput-byte v5, v0, v1

    const/16 v1, 0x1dd

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x1de

    aput-byte v5, v0, v1

    const/16 v1, 0x1e2

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x1e4

    aput-byte v5, v0, v1

    const/16 v1, 0x1e5

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x1e6

    aput-byte v5, v0, v1

    const/16 v1, 0x1ea

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x1ec

    aput-byte v5, v0, v1

    const/16 v1, 0x1ed

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x1ee

    aput-byte v5, v0, v1

    const/16 v1, 0x1f2

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x1f4

    aput-byte v5, v0, v1

    const/16 v1, 0x1f5

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x1f6

    aput-byte v5, v0, v1

    const/16 v1, 0x1f7

    aput-byte v5, v0, v1

    const/16 v1, 0x1f9

    aput-byte v5, v0, v1

    const/16 v1, 0x1fd

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x1ff

    aput-byte v5, v0, v1

    const/16 v1, 0x200

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x201

    aput-byte v5, v0, v1

    const/16 v1, 0x205

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x207

    aput-byte v5, v0, v1

    const/16 v1, 0x208

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x209

    aput-byte v5, v0, v1

    const/16 v1, 0x20d

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x20f

    aput-byte v5, v0, v1

    const/16 v1, 0x210

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x211

    aput-byte v5, v0, v1

    const/16 v1, 0x212

    aput-byte v5, v0, v1

    const/16 v1, 0x214

    aput-byte v5, v0, v1

    const/16 v1, 0x218

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x21a

    aput-byte v5, v0, v1

    const/16 v1, 0x21b

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x21c

    aput-byte v5, v0, v1

    const/16 v1, 0x220

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x222

    aput-byte v5, v0, v1

    const/16 v1, 0x223

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x224

    aput-byte v5, v0, v1

    const/16 v1, 0x228

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x22a

    aput-byte v5, v0, v1

    const/16 v1, 0x22b

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x22c

    aput-byte v5, v0, v1

    const/16 v1, 0x22d

    aput-byte v5, v0, v1

    return-object v0
.end method

.method private set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    instance-of v0, v0, Lcom/badlogic/gdx/utils/OrderedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/OrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    instance-of v0, v0, Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Ljava/lang/Object;

    goto :goto_0
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x10

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    :cond_2
    if-eq v1, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v2, 0x4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x4

    goto :goto_0

    :cond_3
    sparse-switch v0, :sswitch_data_0

    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal escaped character: \\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const/16 v0, 0x8

    :goto_1
    :sswitch_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xc

    goto :goto_1

    :sswitch_3
    const/16 v0, 0xa

    goto :goto_1

    :sswitch_4
    const/16 v0, 0xd

    goto :goto_1

    :sswitch_5
    const/16 v0, 0x9

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2f -> :sswitch_1
        0x5c -> :sswitch_1
        0x62 -> :sswitch_0
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method protected bool(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected number(Ljava/lang/String;F)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [C

    :goto_0
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :cond_0
    if-nez v2, :cond_1

    :try_start_2
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    throw v0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonReader;->parse([CII)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse([CII)Ljava/lang/Object;
    .locals 18

    const/4 v1, 0x4

    new-array v7, v1, [I

    const/4 v5, 0x0

    new-instance v12, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v12, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v11, v2

    move/from16 v2, p2

    move/from16 v17, v1

    move v1, v4

    move v4, v6

    move/from16 v6, v17

    :goto_0
    packed-switch v6, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v1, v2

    move v4, v1

    :goto_1
    move/from16 v0, p3

    if-ge v4, v0, :cond_1d

    const/4 v2, 0x1

    const/4 v1, 0x0

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    :goto_2
    if-lt v2, v4, :cond_1b

    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error parsing JSON on line "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " near: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v5, Ljava/lang/String;

    sub-int v6, p3, v4

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v4, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v3}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :pswitch_1
    move/from16 v0, p3

    if-ne v2, v0, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    const/4 v6, 0x5

    goto :goto_0

    :cond_2
    :pswitch_2
    :try_start_0
    sget-object v6, Lcom/badlogic/gdx/utils/JsonReader;->_json_key_offsets:[S

    aget-short v9, v6, v4

    sget-object v6, Lcom/badlogic/gdx/utils/JsonReader;->_json_index_offsets:[S

    aget-short v6, v6, v4

    sget-object v8, Lcom/badlogic/gdx/utils/JsonReader;->_json_single_lengths:[B

    aget-byte v13, v8, v4

    if-lez v13, :cond_3

    add-int v8, v9, v13

    add-int/lit8 v8, v8, -0x1

    move v10, v9

    :goto_3
    if-ge v8, v10, :cond_4

    add-int/2addr v9, v13

    add-int/2addr v6, v13

    :cond_3
    sget-object v8, Lcom/badlogic/gdx/utils/JsonReader;->_json_range_lengths:[B

    aget-byte v10, v8, v4

    if-lez v10, :cond_25

    shl-int/lit8 v4, v10, 0x1

    add-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x2

    move v8, v9

    :goto_4
    if-ge v4, v8, :cond_7

    add-int v4, v6, v10

    :goto_5
    sget-object v6, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_targs:[B

    aget-byte v6, v6, v4

    sget-object v8, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v8, v8, v4

    if-eqz v8, :cond_24

    sget-object v8, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_actions:[B

    aget-byte v4, v8, v4

    sget-object v9, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v9, v4

    move v9, v8

    move/from16 v17, v4

    move v4, v1

    move/from16 v1, v17

    :goto_6
    add-int/lit8 v8, v1, -0x1

    if-gtz v1, :cond_a

    move v1, v4

    move v4, v6

    :goto_7
    :pswitch_3
    if-nez v4, :cond_14

    const/4 v6, 0x5

    goto/16 :goto_0

    :cond_4
    sub-int v14, v8, v10

    shr-int/lit8 v14, v14, 0x1

    add-int/2addr v14, v10

    aget-char v15, p1, v2

    sget-object v16, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v16, v16, v14

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    add-int/lit8 v8, v14, -0x1

    goto :goto_3

    :cond_5
    aget-char v10, p1, v2

    sget-object v15, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v15, v15, v14

    if-le v10, v15, :cond_6

    add-int/lit8 v10, v14, 0x1

    goto :goto_3

    :cond_6
    sub-int v4, v14, v9

    add-int/2addr v4, v6

    goto :goto_5

    :cond_7
    sub-int v13, v4, v8

    shr-int/lit8 v13, v13, 0x1

    and-int/lit8 v13, v13, -0x2

    add-int/2addr v13, v8

    aget-char v14, p1, v2

    sget-object v15, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    aget-char v15, v15, v13

    if-ge v14, v15, :cond_8

    add-int/lit8 v4, v13, -0x2

    goto :goto_4

    :cond_8
    aget-char v8, p1, v2

    sget-object v14, Lcom/badlogic/gdx/utils/JsonReader;->_json_trans_keys:[C

    add-int/lit8 v15, v13, 0x1

    aget-char v14, v14, v15

    if-le v8, v14, :cond_9

    add-int/lit8 v8, v13, 0x2

    goto :goto_4

    :cond_9
    sub-int v4, v13, v9

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v6

    goto :goto_5

    :cond_a
    sget-object v1, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v10, v9, 0x1

    aget-byte v1, v1, v9

    packed-switch v1, :pswitch_data_1

    move v1, v8

    move v9, v10

    goto :goto_6

    :pswitch_4
    const/4 v4, 0x0

    move v1, v8

    move v9, v10

    move v5, v2

    goto :goto_6

    :pswitch_5
    const/4 v4, 0x1

    move v1, v8

    move v9, v10

    goto :goto_6

    :pswitch_6
    new-instance v1, Ljava/lang/String;

    sub-int v9, v2, v5

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v5, v9}, Ljava/lang/String;-><init>([CII)V

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move v1, v8

    move v9, v10

    move v5, v2

    goto :goto_6

    :pswitch_7
    new-instance v1, Ljava/lang/String;

    sub-int v9, v2, v5

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v5, v9}, Ljava/lang/String;-><init>([CII)V

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    :goto_8
    iget v1, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_c

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v5}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    move v9, v10

    move v5, v2

    goto/16 :goto_6

    :cond_c
    const/4 v1, 0x0

    goto :goto_9

    :pswitch_8
    new-instance v9, Ljava/lang/String;

    sub-int v1, v2, v5

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5, v1}, Ljava/lang/String;-><init>([CII)V

    iget v1, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_d

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_a
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v5}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;F)V

    move v1, v8

    move v9, v10

    move v5, v2

    goto/16 :goto_6

    :cond_d
    const/4 v1, 0x0

    goto :goto_a

    :pswitch_9
    iget v1, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_e

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_b
    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    move v1, v8

    move v9, v10

    goto/16 :goto_6

    :cond_e
    const/4 v1, 0x0

    goto :goto_b

    :pswitch_a
    iget v1, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_f

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_c
    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    move v1, v8

    move v9, v10

    goto/16 :goto_6

    :cond_f
    const/4 v1, 0x0

    goto :goto_c

    :pswitch_b
    iget v1, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_10

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_d
    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    move v9, v10

    goto/16 :goto_6

    :cond_10
    const/4 v1, 0x0

    goto :goto_d

    :pswitch_c
    iget v1, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_12

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->startObject(Ljava/lang/String;)V

    array-length v1, v7

    if-ne v11, v1, :cond_11

    array-length v1, v7

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v7

    invoke-static {v7, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v1

    :cond_11
    add-int/lit8 v8, v11, 0x1

    aput v6, v7, v11

    const/16 v6, 0x9

    const/4 v1, 0x2

    move v11, v8

    move/from16 v17, v4

    move v4, v6

    move v6, v1

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_12
    const/4 v1, 0x0

    goto :goto_e

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    add-int/lit8 v6, v11, -0x1

    aget v8, v7, v6

    const/4 v1, 0x2

    move v11, v6

    move v6, v1

    move v1, v4

    move v4, v8

    goto/16 :goto_0

    :pswitch_e
    iget v1, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_13

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->startArray(Ljava/lang/String;)V

    array-length v1, v7

    if-ne v11, v1, :cond_22

    array-length v1, v7

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v7

    invoke-static {v7, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_10
    add-int/lit8 v7, v11, 0x1

    aput v6, v1, v11

    const/16 v8, 0x2a

    const/4 v6, 0x2

    move v11, v7

    move-object v7, v1

    move v1, v4

    move v4, v8

    goto/16 :goto_0

    :cond_13
    const/4 v1, 0x0

    goto :goto_f

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/JsonReader;->pop()V

    add-int/lit8 v6, v11, -0x1

    aget v8, v7, v6

    const/4 v1, 0x2

    move v11, v6

    move v6, v1

    move v1, v4

    move v4, v8

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p3

    if-eq v2, v0, :cond_15

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_15
    :pswitch_10
    move v8, v1

    move v1, v4

    move/from16 v0, p3

    if-ne v2, v0, :cond_21

    sget-object v4, Lcom/badlogic/gdx/utils/JsonReader;->_json_eof_actions:[B

    aget-byte v1, v4, v1

    sget-object v6, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v6, v1

    move v7, v5

    :goto_11
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/utils/JsonReader;->_json_actions:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v1, v1, v4

    packed-switch v1, :pswitch_data_2

    :goto_12
    move v1, v5

    move v4, v6

    goto :goto_11

    :pswitch_11
    new-instance v1, Ljava/lang/String;

    sub-int v4, v2, v7

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v7, v4}, Ljava/lang/String;-><init>([CII)V

    if-eqz v8, :cond_20

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_13
    iget v1, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_16

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    move v4, v6

    move v7, v2

    goto :goto_11

    :cond_16
    const/4 v1, 0x0

    goto :goto_14

    :pswitch_12
    new-instance v4, Ljava/lang/String;

    sub-int v1, v2, v7

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v7, v1}, Ljava/lang/String;-><init>([CII)V

    iget v1, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_17

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_15
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/utils/JsonReader;->number(Ljava/lang/String;F)V

    move v1, v5

    move v4, v6

    move v7, v2

    goto :goto_11

    :cond_17
    const/4 v1, 0x0

    goto :goto_15

    :pswitch_13
    iget v1, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_18

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_16
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    move v1, v5

    move v4, v6

    goto :goto_11

    :cond_18
    const/4 v1, 0x0

    goto :goto_16

    :pswitch_14
    iget v1, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_19

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_17
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/utils/JsonReader;->bool(Ljava/lang/String;Z)V

    move v1, v5

    move v4, v6

    goto :goto_11

    :cond_19
    const/4 v1, 0x0

    goto :goto_17

    :pswitch_15
    iget v1, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_1a

    invoke-virtual {v12}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_18
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/utils/JsonReader;->string(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_12

    :catch_0
    move-exception v1

    move-object v3, v1

    move v4, v2

    goto/16 :goto_1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_18

    :cond_1b
    aget-char v5, p1, v2

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1c

    add-int/lit8 v1, v1, 0x1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    instance-of v1, v1, Lcom/badlogic/gdx/utils/OrderedMap;

    if-eqz v1, :cond_1e

    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v2, "Error parsing JSON, unmatched brace."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    const-string v2, "Error parsing JSON, unmatched bracket."

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonReader;->root:Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/badlogic/gdx/utils/JsonReader;->root:Ljava/lang/Object;

    return-object v1

    :cond_20
    move-object v4, v1

    goto/16 :goto_13

    :cond_21
    move v4, v2

    goto/16 :goto_1

    :cond_22
    move-object v1, v7

    goto/16 :goto_10

    :cond_23
    move-object v5, v1

    goto/16 :goto_8

    :cond_24
    move v4, v6

    goto/16 :goto_7

    :cond_25
    move v4, v6

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method protected pop()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->root:Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startArray(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    return-void
.end method

.method protected startObject(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/OrderedMap;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonReader;->current:Ljava/lang/Object;

    return-void
.end method

.method protected string(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/JsonReader;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
