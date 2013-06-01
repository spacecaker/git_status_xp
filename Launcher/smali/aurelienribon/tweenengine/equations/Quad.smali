.class public abstract Laurelienribon/tweenengine/equations/Quad;
.super Laurelienribon/tweenengine/TweenEquation;


# static fields
.field public static final IN:Laurelienribon/tweenengine/equations/Quad;

.field public static final INOUT:Laurelienribon/tweenengine/equations/Quad;

.field public static final OUT:Laurelienribon/tweenengine/equations/Quad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laurelienribon/tweenengine/equations/Quad$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Quad$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Quad;->IN:Laurelienribon/tweenengine/equations/Quad;

    new-instance v0, Laurelienribon/tweenengine/equations/Quad$2;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Quad$2;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Quad;->OUT:Laurelienribon/tweenengine/equations/Quad;

    new-instance v0, Laurelienribon/tweenengine/equations/Quad$3;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Quad$3;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Quad;->INOUT:Laurelienribon/tweenengine/equations/Quad;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    return-void
.end method
