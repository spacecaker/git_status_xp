.class public abstract Laurelienribon/tweenengine/equations/Back;
.super Laurelienribon/tweenengine/TweenEquation;


# static fields
.field public static final IN:Laurelienribon/tweenengine/equations/Back;

.field public static final INOUT:Laurelienribon/tweenengine/equations/Back;

.field public static final OUT:Laurelienribon/tweenengine/equations/Back;


# instance fields
.field protected param_s:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laurelienribon/tweenengine/equations/Back$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Back$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Back;->IN:Laurelienribon/tweenengine/equations/Back;

    new-instance v0, Laurelienribon/tweenengine/equations/Back$2;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Back$2;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Back;->OUT:Laurelienribon/tweenengine/equations/Back;

    new-instance v0, Laurelienribon/tweenengine/equations/Back$3;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Back$3;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Back;->INOUT:Laurelienribon/tweenengine/equations/Back;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    const v0, 0x3fd9cd60

    iput v0, p0, Laurelienribon/tweenengine/equations/Back;->param_s:F

    return-void
.end method


# virtual methods
.method public s(F)Laurelienribon/tweenengine/equations/Back;
    .locals 0

    iput p1, p0, Laurelienribon/tweenengine/equations/Back;->param_s:F

    return-object p0
.end method
