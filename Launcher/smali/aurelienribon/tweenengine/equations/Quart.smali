.class public abstract Laurelienribon/tweenengine/equations/Quart;
.super Laurelienribon/tweenengine/TweenEquation;


# static fields
.field public static final IN:Laurelienribon/tweenengine/equations/Quart;

.field public static final INOUT:Laurelienribon/tweenengine/equations/Quart;

.field public static final OUT:Laurelienribon/tweenengine/equations/Quart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laurelienribon/tweenengine/equations/Quart$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Quart$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Quart;->IN:Laurelienribon/tweenengine/equations/Quart;

    new-instance v0, Laurelienribon/tweenengine/equations/Quart$2;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Quart$2;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Quart;->OUT:Laurelienribon/tweenengine/equations/Quart;

    new-instance v0, Laurelienribon/tweenengine/equations/Quart$3;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Quart$3;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Quart;->INOUT:Laurelienribon/tweenengine/equations/Quart;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    return-void
.end method
