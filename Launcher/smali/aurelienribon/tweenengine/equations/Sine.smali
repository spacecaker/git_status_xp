.class public abstract Laurelienribon/tweenengine/equations/Sine;
.super Laurelienribon/tweenengine/TweenEquation;


# static fields
.field public static final IN:Laurelienribon/tweenengine/equations/Sine; = null

.field public static final INOUT:Laurelienribon/tweenengine/equations/Sine; = null

.field public static final OUT:Laurelienribon/tweenengine/equations/Sine; = null

.field private static final PI:F = 3.1415927f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laurelienribon/tweenengine/equations/Sine$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Sine$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Sine;->IN:Laurelienribon/tweenengine/equations/Sine;

    new-instance v0, Laurelienribon/tweenengine/equations/Sine$2;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Sine$2;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Sine;->OUT:Laurelienribon/tweenengine/equations/Sine;

    new-instance v0, Laurelienribon/tweenengine/equations/Sine$3;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Sine$3;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Sine;->INOUT:Laurelienribon/tweenengine/equations/Sine;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    return-void
.end method
