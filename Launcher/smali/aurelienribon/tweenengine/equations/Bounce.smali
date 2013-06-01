.class public abstract Laurelienribon/tweenengine/equations/Bounce;
.super Laurelienribon/tweenengine/TweenEquation;


# static fields
.field public static final IN:Laurelienribon/tweenengine/equations/Bounce;

.field public static final INOUT:Laurelienribon/tweenengine/equations/Bounce;

.field public static final OUT:Laurelienribon/tweenengine/equations/Bounce;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laurelienribon/tweenengine/equations/Bounce$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Bounce$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Bounce;->IN:Laurelienribon/tweenengine/equations/Bounce;

    new-instance v0, Laurelienribon/tweenengine/equations/Bounce$2;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Bounce$2;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    new-instance v0, Laurelienribon/tweenengine/equations/Bounce$3;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Bounce$3;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Bounce;->INOUT:Laurelienribon/tweenengine/equations/Bounce;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    return-void
.end method
