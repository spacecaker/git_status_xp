.class public abstract Laurelienribon/tweenengine/equations/Circ;
.super Laurelienribon/tweenengine/TweenEquation;


# static fields
.field public static final IN:Laurelienribon/tweenengine/equations/Circ;

.field public static final INOUT:Laurelienribon/tweenengine/equations/Circ;

.field public static final OUT:Laurelienribon/tweenengine/equations/Circ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laurelienribon/tweenengine/equations/Circ$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Circ$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Circ;->IN:Laurelienribon/tweenengine/equations/Circ;

    new-instance v0, Laurelienribon/tweenengine/equations/Circ$2;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Circ$2;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Circ;->OUT:Laurelienribon/tweenengine/equations/Circ;

    new-instance v0, Laurelienribon/tweenengine/equations/Circ$3;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Circ$3;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Circ;->INOUT:Laurelienribon/tweenengine/equations/Circ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    return-void
.end method
