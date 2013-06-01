.class Laurelienribon/tweenengine/equations/Bounce$1;
.super Laurelienribon/tweenengine/equations/Bounce;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Bounce;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(FFFF)F
    .locals 3

    sget-object v0, Laurelienribon/tweenengine/equations/Bounce$1;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    sub-float v1, p4, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3, p4}, Laurelienribon/tweenengine/equations/Bounce;->compute(FFFF)F

    move-result v0

    sub-float v0, p3, v0

    add-float/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Bounce.IN"

    return-object v0
.end method
