.class public abstract Laurelienribon/tweenengine/equations/Cubic;
.super Laurelienribon/tweenengine/TweenEquation;


# static fields
.field public static final IN:Laurelienribon/tweenengine/equations/Cubic;

.field public static final INOUT:Laurelienribon/tweenengine/equations/Cubic;

.field public static final OUT:Laurelienribon/tweenengine/equations/Cubic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laurelienribon/tweenengine/equations/Cubic$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Cubic$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    new-instance v0, Laurelienribon/tweenengine/equations/Cubic$2;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Cubic$2;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    new-instance v0, Laurelienribon/tweenengine/equations/Cubic$3;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Cubic$3;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Cubic;->INOUT:Laurelienribon/tweenengine/equations/Cubic;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    return-void
.end method
