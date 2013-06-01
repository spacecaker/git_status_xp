.class Lcom/iLoong/launcher/cling/h;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)F
    .locals 3

    const v2, 0x3dcccccd

    sget v0, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v0, v0, 0x2

    if-ge p0, v0, :cond_0

    sget v0, Lcom/iLoong/launcher/cling/o;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    int-to-float v1, p0

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x4039999a

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p0

    sget v1, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_0
.end method

.method public static b(I)F
    .locals 3

    const v2, -0x42333333

    sget v0, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v0, v0, 0x2

    if-ge p0, v0, :cond_0

    sget v0, Lcom/iLoong/launcher/cling/o;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    int-to-float v1, p0

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p0

    sget v1, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/iLoong/launcher/cling/o;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, -0x3fc66666

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_0
.end method
