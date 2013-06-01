.class public abstract Laurelienribon/tweenengine/equations/Elastic;
.super Laurelienribon/tweenengine/TweenEquation;


# static fields
.field public static final IN:Laurelienribon/tweenengine/equations/Elastic; = null

.field public static final INOUT:Laurelienribon/tweenengine/equations/Elastic; = null

.field public static final OUT:Laurelienribon/tweenengine/equations/Elastic; = null

.field private static final PI:F = 3.1415927f


# instance fields
.field protected param_a:F

.field protected param_p:F

.field protected setA:Z

.field protected setP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laurelienribon/tweenengine/equations/Elastic$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Elastic$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Elastic;->IN:Laurelienribon/tweenengine/equations/Elastic;

    new-instance v0, Laurelienribon/tweenengine/equations/Elastic$2;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Elastic$2;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Elastic;->OUT:Laurelienribon/tweenengine/equations/Elastic;

    new-instance v0, Laurelienribon/tweenengine/equations/Elastic$3;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Elastic$3;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Elastic;->INOUT:Laurelienribon/tweenengine/equations/Elastic;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    iput-boolean v0, p0, Laurelienribon/tweenengine/equations/Elastic;->setA:Z

    iput-boolean v0, p0, Laurelienribon/tweenengine/equations/Elastic;->setP:Z

    return-void
.end method


# virtual methods
.method public a(F)Laurelienribon/tweenengine/equations/Elastic;
    .locals 1

    iput p1, p0, Laurelienribon/tweenengine/equations/Elastic;->param_a:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/equations/Elastic;->setA:Z

    return-object p0
.end method

.method public p(F)Laurelienribon/tweenengine/equations/Elastic;
    .locals 1

    iput p1, p0, Laurelienribon/tweenengine/equations/Elastic;->param_p:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/equations/Elastic;->setP:Z

    return-object p0
.end method
