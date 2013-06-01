.class public Lcom/badlogic/gdx/utils/XmlReader;
.super Ljava/lang/Object;


# static fields
.field private static final _xml_actions:[B = null

.field private static final _xml_index_offsets:[S = null

.field private static final _xml_indicies:[B = null

.field private static final _xml_key_offsets:[B = null

.field private static final _xml_range_lengths:[B = null

.field private static final _xml_single_lengths:[B = null

.field private static final _xml_trans_actions:[B = null

.field private static final _xml_trans_keys:[C = null

.field private static final _xml_trans_targs:[B = null

.field static final xml_en_elementBody:I = 0xf

.field static final xml_en_main:I = 0x1

.field static final xml_error:I = 0x0

.field static final xml_first_final:I = 0x22

.field static final xml_start:I = 0x1


# instance fields
.field private current:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private final elements:Lcom/badlogic/gdx/utils/Array;

.field private root:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field private final textBuffer:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_key_offsets_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_key_offsets:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_keys_0()[C

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_single_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_single_lengths:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_range_lengths_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_range_lengths:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_index_offsets_0()[S

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_index_offsets:[S

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_indicies_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_indicies:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_targs_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_targs:[B

    invoke-static {}, Lcom/badlogic/gdx/utils/XmlReader;->init__xml_trans_actions_0()[B

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static init__xml_actions_0()[B
    .locals 7

    const/4 v2, 0x3

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    aput-byte v3, v0, v3

    aput-byte v3, v0, v2

    aput-byte v3, v0, v5

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    aput-byte v4, v0, v6

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v5, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v6, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aput-byte v4, v0, v1

    const/16 v1, 0x13

    aput-byte v6, v0, v1

    const/16 v1, 0x14

    aput-byte v4, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v5, v0, v1

    const/16 v1, 0x17

    aput-byte v4, v0, v1

    const/16 v1, 0x18

    aput-byte v4, v0, v1

    const/16 v1, 0x19

    aput-byte v5, v0, v1

    return-object v0
.end method

.method private static init__xml_index_offsets_0()[S
    .locals 7

    const/16 v6, 0x1a

    const/16 v5, 0x14

    const/16 v4, 0xe

    const/16 v3, 0x9

    const/4 v2, 0x4

    const/16 v0, 0x24

    new-array v0, v0, [S

    const/4 v1, 0x2

    aput-short v2, v0, v1

    const/4 v1, 0x3

    aput-short v3, v0, v1

    aput-short v4, v0, v2

    const/4 v1, 0x5

    aput-short v5, v0, v1

    const/4 v1, 0x6

    aput-short v6, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x1e

    aput-short v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x23

    aput-short v2, v0, v1

    const/16 v1, 0x25

    aput-short v1, v0, v3

    const/16 v1, 0xa

    const/16 v2, 0x27

    aput-short v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x2c

    aput-short v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x30

    aput-short v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x34

    aput-short v2, v0, v1

    const/16 v1, 0x36

    aput-short v1, v0, v4

    const/16 v1, 0xf

    const/16 v2, 0x38

    aput-short v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x3c

    aput-short v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x3e

    aput-short v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x43

    aput-short v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x48

    aput-short v2, v0, v1

    const/16 v1, 0x4e

    aput-short v1, v0, v5

    const/16 v1, 0x15

    const/16 v2, 0x54

    aput-short v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x58

    aput-short v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x5d

    aput-short v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x5f

    aput-short v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x61

    aput-short v2, v0, v1

    const/16 v1, 0x66

    aput-short v1, v0, v6

    const/16 v1, 0x1b

    const/16 v2, 0x6a

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x6e

    aput-short v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x70

    aput-short v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x74

    aput-short v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x76

    aput-short v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x78

    aput-short v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x7a

    aput-short v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x7c

    aput-short v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x7f

    aput-short v2, v0, v1

    return-object v0
.end method

.method private static init__xml_indicies_0()[B
    .locals 8

    const/16 v7, 0x10

    const/16 v6, 0xb

    const/16 v5, 0x28

    const/16 v4, 0x9

    const/4 v3, 0x1

    const/16 v0, 0x81

    new-array v0, v0, [B

    const/4 v1, 0x2

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v1, v0, v4

    const/16 v1, 0xa

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v1, v0, v6

    const/16 v1, 0xc

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v4, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    aput-byte v3, v0, v7

    const/16 v1, 0x11

    aput-byte v6, v0, v1

    const/16 v1, 0x12

    aput-byte v4, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    aput-byte v7, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v7, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    aput-byte v7, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v1, v0, v5

    const/16 v1, 0x29

    aput-byte v6, v0, v1

    const/16 v1, 0x2a

    aput-byte v4, v0, v1

    const/16 v1, 0x2b

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    aput-byte v3, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    aput-byte v6, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    aput-byte v3, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    aput-byte v5, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    aput-byte v3, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    aput-byte v5, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    aput-byte v3, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    aput-byte v3, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    aput-byte v3, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    aput-byte v5, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    aput-byte v5, v0, v1

    const/16 v1, 0x65

    aput-byte v3, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    aput-byte v3, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    aput-byte v3, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    aput-byte v3, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    aput-byte v3, v0, v1

    const/16 v1, 0x74

    aput-byte v3, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v3, v0, v1

    return-object v0
.end method

.method private static init__xml_key_offsets_0()[B
    .locals 7

    const/16 v6, 0x1a

    const/16 v5, 0x14

    const/16 v4, 0xe

    const/16 v3, 0x9

    const/4 v2, 0x4

    const/16 v0, 0x24

    new-array v0, v0, [B

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    aput-byte v4, v0, v2

    const/4 v1, 0x5

    aput-byte v5, v0, v1

    const/4 v1, 0x6

    aput-byte v6, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    aput-byte v1, v0, v3

    const/16 v1, 0xa

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    aput-byte v1, v0, v4

    const/16 v1, 0xf

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    aput-byte v1, v0, v5

    const/16 v1, 0x15

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    aput-byte v1, v0, v6

    const/16 v1, 0x1b

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private static init__xml_range_lengths_0()[B
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x24

    new-array v0, v0, [B

    aput-byte v2, v0, v2

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private static init__xml_single_lengths_0()[B
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v0, 0x24

    new-array v0, v0, [B

    aput-byte v3, v0, v2

    aput-byte v4, v0, v3

    aput-byte v4, v0, v4

    aput-byte v5, v0, v5

    const/4 v1, 0x5

    aput-byte v5, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v4, v0, v1

    const/16 v1, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aput-byte v4, v0, v1

    const/16 v1, 0x12

    aput-byte v4, v0, v1

    const/16 v1, 0x13

    aput-byte v5, v0, v1

    const/16 v1, 0x14

    aput-byte v5, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v4, v0, v1

    const/16 v1, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    aput-byte v4, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

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

    return-object v0
.end method

.method private static init__xml_trans_actions_0()[B
    .locals 8

    const/16 v7, 0xd

    const/4 v6, 0x5

    const/16 v5, 0xb

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0x3f

    new-array v0, v0, [B

    aput-byte v3, v0, v4

    aput-byte v4, v0, v6

    const/4 v1, 0x6

    aput-byte v4, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v1, v0, v5

    aput-byte v5, v0, v7

    const/16 v1, 0xe

    aput-byte v5, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    aput-byte v7, v0, v1

    const/16 v1, 0x17

    aput-byte v6, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v4, v0, v1

    const/16 v1, 0x25

    aput-byte v4, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    aput-byte v5, v0, v1

    const/16 v1, 0x2d

    aput-byte v5, v0, v1

    const/16 v1, 0x32

    aput-byte v3, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    aput-byte v7, v0, v1

    const/16 v1, 0x36

    aput-byte v6, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    return-object v0
.end method

.method private static init__xml_trans_keys_0()[C
    .locals 8

    const/16 v7, 0x2f

    const/16 v6, 0x3e

    const/16 v5, 0x20

    const/16 v4, 0xd

    const/16 v3, 0x9

    const/16 v0, 0x74

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char v5, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x3c

    aput-char v2, v0, v1

    const/4 v1, 0x2

    aput-char v3, v0, v1

    const/4 v1, 0x3

    aput-char v4, v0, v1

    const/4 v1, 0x4

    aput-char v5, v0, v1

    const/4 v1, 0x5

    aput-char v7, v0, v1

    const/4 v1, 0x6

    aput-char v6, v0, v1

    const/4 v1, 0x7

    aput-char v3, v0, v1

    const/16 v1, 0x8

    aput-char v4, v0, v1

    aput-char v5, v0, v3

    const/16 v1, 0xa

    aput-char v7, v0, v1

    const/16 v1, 0xb

    aput-char v6, v0, v1

    const/16 v1, 0xc

    aput-char v3, v0, v1

    aput-char v4, v0, v4

    const/16 v1, 0xe

    aput-char v5, v0, v1

    const/16 v1, 0xf

    aput-char v7, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    const/16 v1, 0x11

    aput-char v6, v0, v1

    const/16 v1, 0x12

    aput-char v3, v0, v1

    const/16 v1, 0x13

    aput-char v4, v0, v1

    const/16 v1, 0x14

    aput-char v5, v0, v1

    const/16 v1, 0x15

    aput-char v7, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    const/16 v1, 0x17

    aput-char v6, v0, v1

    const/16 v1, 0x18

    aput-char v3, v0, v1

    const/16 v1, 0x19

    aput-char v4, v0, v1

    const/16 v1, 0x1a

    aput-char v5, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    aput-char v3, v0, v1

    const/16 v1, 0x1d

    aput-char v4, v0, v1

    const/16 v1, 0x1e

    aput-char v5, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x27

    aput-char v1, v0, v5

    const/16 v1, 0x21

    aput-char v3, v0, v1

    const/16 v1, 0x22

    aput-char v4, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x25

    aput-char v5, v0, v1

    const/16 v1, 0x26

    aput-char v7, v0, v1

    const/16 v1, 0x27

    aput-char v6, v0, v1

    const/16 v1, 0x28

    aput-char v3, v0, v1

    const/16 v1, 0x29

    aput-char v4, v0, v1

    const/16 v1, 0x2a

    aput-char v5, v0, v1

    const/16 v1, 0x2b

    aput-char v6, v0, v1

    const/16 v1, 0x2c

    aput-char v3, v0, v1

    const/16 v1, 0x2d

    aput-char v4, v0, v1

    const/16 v1, 0x2e

    aput-char v5, v0, v1

    aput-char v6, v0, v7

    const/16 v1, 0x30

    aput-char v3, v0, v1

    const/16 v1, 0x31

    aput-char v4, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x27

    aput-char v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x27

    aput-char v2, v0, v1

    const/16 v1, 0x34

    aput-char v5, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x3c

    aput-char v2, v0, v1

    const/16 v1, 0x36

    aput-char v3, v0, v1

    const/16 v1, 0x37

    aput-char v4, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-char v2, v0, v1

    const/16 v1, 0x39

    aput-char v5, v0, v1

    const/16 v1, 0x3a

    aput-char v7, v0, v1

    const/16 v1, 0x3b

    aput-char v6, v0, v1

    const/16 v1, 0x3c

    aput-char v3, v0, v1

    const/16 v1, 0x3d

    aput-char v4, v0, v1

    aput-char v5, v0, v6

    const/16 v1, 0x3f

    aput-char v7, v0, v1

    const/16 v1, 0x40

    aput-char v6, v0, v1

    const/16 v1, 0x41

    aput-char v3, v0, v1

    const/16 v1, 0x42

    aput-char v4, v0, v1

    const/16 v1, 0x43

    aput-char v5, v0, v1

    const/16 v1, 0x44

    aput-char v7, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    const/16 v1, 0x46

    aput-char v6, v0, v1

    const/16 v1, 0x47

    aput-char v3, v0, v1

    const/16 v1, 0x48

    aput-char v4, v0, v1

    const/16 v1, 0x49

    aput-char v5, v0, v1

    const/16 v1, 0x4a

    aput-char v7, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    const/16 v1, 0x4c

    aput-char v6, v0, v1

    const/16 v1, 0x4d

    aput-char v3, v0, v1

    const/16 v1, 0x4e

    aput-char v4, v0, v1

    const/16 v1, 0x4f

    aput-char v5, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    const/16 v1, 0x51

    aput-char v3, v0, v1

    const/16 v1, 0x52

    aput-char v4, v0, v1

    const/16 v1, 0x53

    aput-char v5, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x27

    aput-char v2, v0, v1

    const/16 v1, 0x56

    aput-char v3, v0, v1

    const/16 v1, 0x57

    aput-char v4, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x5a

    aput-char v5, v0, v1

    const/16 v1, 0x5b

    aput-char v7, v0, v1

    const/16 v1, 0x5c

    aput-char v6, v0, v1

    const/16 v1, 0x5d

    aput-char v3, v0, v1

    const/16 v1, 0x5e

    aput-char v4, v0, v1

    const/16 v1, 0x5f

    aput-char v5, v0, v1

    const/16 v1, 0x60

    aput-char v6, v0, v1

    const/16 v1, 0x61

    aput-char v3, v0, v1

    const/16 v1, 0x62

    aput-char v4, v0, v1

    const/16 v1, 0x63

    aput-char v5, v0, v1

    const/16 v1, 0x64

    aput-char v6, v0, v1

    const/16 v1, 0x65

    aput-char v3, v0, v1

    const/16 v1, 0x66

    aput-char v4, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x3c

    aput-char v2, v0, v1

    const/16 v1, 0x68

    aput-char v5, v0, v1

    const/16 v1, 0x69

    aput-char v7, v0, v1

    const/16 v1, 0x6a

    aput-char v3, v0, v1

    const/16 v1, 0x6b

    aput-char v4, v0, v1

    const/16 v1, 0x6c

    aput-char v6, v0, v1

    const/16 v1, 0x6d

    aput-char v6, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-char v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x27

    aput-char v2, v0, v1

    const/16 v1, 0x70

    aput-char v5, v0, v1

    const/16 v1, 0x71

    aput-char v3, v0, v1

    const/16 v1, 0x72

    aput-char v4, v0, v1

    return-object v0
.end method

.method private static init__xml_trans_targs_0()[B
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/16 v4, 0x1c

    const/16 v3, 0x22

    const/16 v0, 0x3f

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    aput-byte v5, v0, v5

    aput-byte v5, v0, v6

    aput-byte v6, v0, v7

    const/4 v1, 0x6

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v7, v0, v1

    const/16 v1, 0x9

    aput-byte v6, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v7, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    aput-byte v1, v0, v4

    const/16 v1, 0x1d

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    aput-byte v1, v0, v3

    const/16 v1, 0x23

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    aput-byte v4, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    aput-byte v4, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    aput-byte v4, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    return-object v0
.end method


# virtual methods
.method protected attribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected close()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected entity(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "lt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ">"

    goto :goto_0

    :cond_1
    const-string v0, "amp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "&"

    goto :goto_0

    :cond_2
    const-string v0, "apos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\'"

    goto :goto_0

    :cond_3
    const-string v0, "quot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\""

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected open(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->addChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-void
.end method

.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/XmlReader$Element;
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

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 2

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 5

    const/4 v1, 0x0

    const/16 v0, 0x400

    new-array v0, v0, [C

    move-object v2, v0

    move v0, v1

    :goto_0
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v2, v1, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v3, :cond_1

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    goto :goto_0

    :cond_1
    add-int/2addr v0, v3

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader;->parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    return-object v0
.end method

.method public parse([CII)Lcom/badlogic/gdx/utils/XmlReader$Element;
    .locals 15

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    move v2, v1

    move/from16 v1, p2

    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_0
    move v3, v1

    move/from16 v0, p3

    if-ge v3, v0, :cond_1d

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v14, v1

    move v1, v2

    move v2, v14

    :goto_1
    if-lt v2, v3, :cond_1b

    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error parsing XML on line "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " near: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    const/16 v5, 0x20

    sub-int v6, p3, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v3, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move/from16 v0, p3

    if-ne v1, v0, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    if-nez v7, :cond_2

    const/4 v2, 0x5

    goto :goto_0

    :cond_2
    :pswitch_1
    sget-object v2, Lcom/badlogic/gdx/utils/XmlReader;->_xml_key_offsets:[B

    aget-byte v2, v2, v7

    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_index_offsets:[S

    aget-short v3, v3, v7

    sget-object v8, Lcom/badlogic/gdx/utils/XmlReader;->_xml_single_lengths:[B

    aget-byte v10, v8, v7

    if-lez v10, :cond_3

    add-int v8, v2, v10

    add-int/lit8 v8, v8, -0x1

    move v9, v2

    :goto_2
    if-ge v8, v9, :cond_5

    add-int/2addr v2, v10

    add-int/2addr v3, v10

    :cond_3
    sget-object v8, Lcom/badlogic/gdx/utils/XmlReader;->_xml_range_lengths:[B

    aget-byte v9, v8, v7

    if-lez v9, :cond_4

    shl-int/lit8 v7, v9, 0x1

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x2

    move v8, v2

    :goto_3
    if-ge v7, v8, :cond_8

    add-int/2addr v3, v9

    :cond_4
    :goto_4
    sget-object v2, Lcom/badlogic/gdx/utils/XmlReader;->_xml_indicies:[B

    aget-byte v2, v2, v3

    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_targs:[B

    aget-byte v7, v3, v2

    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_1f

    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_actions:[B

    aget-byte v2, v3, v2

    sget-object v8, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v8, v2

    move v14, v2

    move v2, v6

    move v6, v3

    move v3, v14

    :goto_5
    add-int/lit8 v11, v3, -0x1

    if-gtz v3, :cond_b

    move-object v3, v5

    move v5, v7

    move v14, v2

    move v2, v4

    move v4, v14

    :goto_6
    if-nez v5, :cond_1a

    const/4 v6, 0x5

    move v7, v5

    move-object v5, v3

    move v14, v2

    move v2, v6

    move v6, v4

    move v4, v14

    goto/16 :goto_0

    :cond_5
    sub-int v11, v8, v9

    shr-int/lit8 v11, v11, 0x1

    add-int/2addr v11, v9

    aget-char v12, p1, v1

    sget-object v13, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v13, v13, v11

    if-ge v12, v13, :cond_6

    add-int/lit8 v8, v11, -0x1

    goto :goto_2

    :cond_6
    aget-char v9, p1, v1

    sget-object v12, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v12, v12, v11

    if-le v9, v12, :cond_7

    add-int/lit8 v9, v11, 0x1

    goto :goto_2

    :cond_7
    sub-int v2, v11, v2

    add-int/2addr v3, v2

    goto :goto_4

    :cond_8
    sub-int v10, v7, v8

    shr-int/lit8 v10, v10, 0x1

    and-int/lit8 v10, v10, -0x2

    add-int/2addr v10, v8

    aget-char v11, p1, v1

    sget-object v12, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    aget-char v12, v12, v10

    if-ge v11, v12, :cond_9

    add-int/lit8 v7, v10, -0x2

    goto :goto_3

    :cond_9
    aget-char v8, p1, v1

    sget-object v11, Lcom/badlogic/gdx/utils/XmlReader;->_xml_trans_keys:[C

    add-int/lit8 v12, v10, 0x1

    aget-char v11, v11, v12

    if-le v8, v11, :cond_a

    add-int/lit8 v8, v10, 0x2

    goto :goto_3

    :cond_a
    sub-int v2, v10, v2

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v2

    goto :goto_4

    :cond_b
    sget-object v3, Lcom/badlogic/gdx/utils/XmlReader;->_xml_actions:[B

    add-int/lit8 v12, v6, 0x1

    aget-byte v3, v3, v6

    packed-switch v3, :pswitch_data_1

    :cond_c
    move v3, v11

    move v6, v12

    goto :goto_5

    :pswitch_2
    move v3, v11

    move v6, v12

    move v2, v1

    goto :goto_5

    :pswitch_3
    aget-char v3, p1, v2

    const/16 v6, 0x3f

    if-eq v3, v6, :cond_d

    const/16 v6, 0x21

    if-ne v3, v6, :cond_11

    :cond_d
    add-int/lit8 v3, v2, 0x1

    aget-char v3, p1, v3

    const/16 v6, 0x5b

    if-ne v3, v6, :cond_10

    add-int/lit8 v3, v2, 0x2

    aget-char v3, p1, v3

    const/16 v6, 0x43

    if-ne v3, v6, :cond_10

    add-int/lit8 v3, v2, 0x3

    aget-char v3, p1, v3

    const/16 v6, 0x44

    if-ne v3, v6, :cond_10

    add-int/lit8 v3, v2, 0x4

    aget-char v3, p1, v3

    const/16 v6, 0x41

    if-ne v3, v6, :cond_10

    add-int/lit8 v3, v2, 0x5

    aget-char v3, p1, v3

    const/16 v6, 0x54

    if-ne v3, v6, :cond_10

    add-int/lit8 v3, v2, 0x6

    aget-char v3, p1, v3

    const/16 v6, 0x41

    if-ne v3, v6, :cond_10

    add-int/lit8 v3, v2, 0x7

    aget-char v3, p1, v3

    const/16 v6, 0x5b

    if-ne v3, v6, :cond_10

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v2, 0x2

    :goto_7
    add-int/lit8 v3, v1, -0x2

    aget-char v3, p1, v3

    const/16 v6, 0x5d

    if-ne v3, v6, :cond_e

    add-int/lit8 v3, v1, -0x1

    aget-char v3, p1, v3

    const/16 v6, 0x5d

    if-ne v3, v6, :cond_e

    aget-char v3, p1, v1

    const/16 v6, 0x3e

    if-ne v3, v6, :cond_e

    new-instance v3, Ljava/lang/String;

    sub-int v6, v1, v2

    add-int/lit8 v6, v6, -0x2

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v2, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    move v14, v2

    move v2, v1

    move v1, v14

    :goto_8
    const/16 v7, 0xf

    const/4 v3, 0x2

    move v6, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    add-int/lit8 v1, v1, 0x1

    :cond_10
    aget-char v3, p1, v1

    const/16 v6, 0x3e

    if-ne v3, v6, :cond_f

    move v14, v2

    move v2, v1

    move v1, v14

    goto :goto_8

    :cond_11
    const/4 v4, 0x1

    new-instance v3, Ljava/lang/String;

    sub-int v6, v1, v2

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v2, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/XmlReader;->open(Ljava/lang/String;)V

    move v3, v11

    move v6, v12

    goto/16 :goto_5

    :pswitch_4
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlReader;->close()V

    const/16 v7, 0xf

    const/4 v3, 0x2

    move v6, v2

    move v2, v3

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlReader;->close()V

    const/16 v7, 0xf

    const/4 v3, 0x2

    move v6, v2

    move v2, v3

    goto/16 :goto_0

    :pswitch_6
    if-eqz v4, :cond_c

    const/16 v7, 0xf

    const/4 v3, 0x2

    move v6, v2

    move v2, v3

    goto/16 :goto_0

    :pswitch_7
    new-instance v5, Ljava/lang/String;

    sub-int v3, v1, v2

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    move v3, v11

    move v6, v12

    goto/16 :goto_5

    :pswitch_8
    new-instance v3, Ljava/lang/String;

    sub-int v6, v1, v2

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v2, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v5, v3}, Lcom/badlogic/gdx/utils/XmlReader;->attribute(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v11

    move v6, v12

    goto/16 :goto_5

    :pswitch_9
    move v10, v1

    :goto_9
    if-ne v10, v2, :cond_14

    :goto_a
    const/4 v3, 0x0

    move v9, v2

    :cond_12
    :goto_b
    if-ne v2, v10, :cond_15

    if-eqz v3, :cond_19

    if-ge v9, v10, :cond_13

    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Ljava/lang/StringBuilder;

    sub-int v3, v10, v9

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move v3, v11

    move v6, v12

    move v2, v9

    goto/16 :goto_5

    :cond_14
    add-int/lit8 v3, v10, -0x1

    aget-char v3, p1, v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_a

    :sswitch_0
    add-int/lit8 v3, v10, -0x1

    move v10, v3

    goto :goto_9

    :cond_15
    add-int/lit8 v6, v2, 0x1

    aget-char v2, p1, v2

    const/16 v8, 0x26

    if-eq v2, v8, :cond_16

    move v2, v6

    goto :goto_b

    :cond_16
    move v2, v6

    :goto_c
    if-eq v2, v10, :cond_12

    add-int/lit8 v8, v2, 0x1

    aget-char v2, p1, v2

    const/16 v13, 0x3b

    if-eq v2, v13, :cond_17

    move v2, v8

    goto :goto_c

    :cond_17
    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Ljava/lang/StringBuilder;

    sub-int v3, v6, v9

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    sub-int v2, v8, v6

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v6, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/XmlReader;->entity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/badlogic/gdx/utils/XmlReader;->textBuffer:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_18

    :goto_d
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    move v3, v2

    move v9, v8

    move v2, v8

    goto :goto_b

    :cond_18
    move-object v2, v3

    goto :goto_d

    :cond_19
    new-instance v2, Ljava/lang/String;

    sub-int v3, v10, v9

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v9, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/XmlReader;->text(Ljava/lang/String;)V

    move v3, v11

    move v6, v12

    move v2, v9

    goto/16 :goto_5

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p3

    if-eq v1, v0, :cond_0

    const/4 v6, 0x1

    move v7, v5

    move-object v5, v3

    move v14, v2

    move v2, v6

    move v6, v4

    move v4, v14

    goto/16 :goto_0

    :cond_1b
    aget-char v4, p1, v2

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1c

    add-int/lit8 v1, v1, 0x1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1d
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->elements:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing XML, unclosed element: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1e
    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/badlogic/gdx/utils/XmlReader;->root:Lcom/badlogic/gdx/utils/XmlReader$Element;

    return-object v1

    :cond_1f
    move v2, v4

    move-object v3, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_6

    :pswitch_a
    move v2, v4

    move-object v3, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method protected text(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/XmlReader;->current:Lcom/badlogic/gdx/utils/XmlReader$Element;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->setText(Ljava/lang/String;)V

    return-void
.end method
