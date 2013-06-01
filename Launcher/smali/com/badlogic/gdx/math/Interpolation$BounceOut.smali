.class public Lcom/badlogic/gdx/math/Interpolation$BounceOut;
.super Lcom/badlogic/gdx/math/Interpolation;


# instance fields
.field final heights:[F

.field final widths:[F


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const v6, 0x3dcccccd

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    if-lt p1, v3, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bounces cannot be < 2 or > 5: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const/high16 v1, 0x3f80

    aput v1, v0, v4

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aget v1, v0, v4

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    aput v1, v0, v4

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v1, 0x3f19999a

    aput v1, v0, v4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v1, 0x3ecccccd

    aput v1, v0, v2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const v1, 0x3ea8f5c3

    aput v1, v0, v2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v1, 0x3ecccccd

    aput v1, v0, v4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v1, 0x3ecccccd

    aput v1, v0, v2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v1, 0x3e4ccccd

    aput v1, v0, v3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const v1, 0x3ea8f5c3

    aput v1, v0, v2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    aput v6, v0, v3

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v1, 0x3eae147b

    aput v1, v0, v4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v1, 0x3eae147b

    aput v1, v0, v2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v1, 0x3e4ccccd

    aput v1, v0, v3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v1, 0x3e19999a

    aput v1, v0, v5

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const v1, 0x3e851eb8

    aput v1, v0, v2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const v1, 0x3de147ae

    aput v1, v0, v3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const v1, 0x3cf5c28f

    aput v1, v0, v5

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v1, 0x3e99999a

    aput v1, v0, v4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v1, 0x3e99999a

    aput v1, v0, v2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v1, 0x3e4ccccd

    aput v1, v0, v3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aput v6, v0, v5

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const/4 v1, 0x4

    aput v6, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const v1, 0x3ee66666

    aput v1, v0, v2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const v1, 0x3e99999a

    aput v1, v0, v3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const v1, 0x3e19999a

    aput v1, v0, v5

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const/4 v1, 0x4

    const v2, 0x3d75c28f

    aput v2, v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>([F[F)V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be the same number of widths and heights."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    iput-object p2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aget v2, v2, v1

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v2, p1

    iget-object v3, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    array-length v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    if-lt v2, v4, :cond_0

    :goto_1
    div-float v2, v3, v1

    const/high16 v3, 0x4080

    div-float/2addr v3, v1

    mul-float/2addr v0, v3

    mul-float/2addr v0, v2

    const/high16 v3, 0x3f80

    mul-float/2addr v2, v0

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    sub-float v0, v3, v0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aget v1, v1, v2

    cmpg-float v5, v3, v1

    if-gtz v5, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    aget v0, v0, v2

    goto :goto_1

    :cond_1
    sub-float/2addr v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
