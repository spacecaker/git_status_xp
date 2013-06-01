.class public abstract Laurelienribon/tweenengine/equations/Expo;
.super Laurelienribon/tweenengine/TweenEquation;


# static fields
.field public static final IN:Laurelienribon/tweenengine/equations/Expo;

.field public static final INOUT:Laurelienribon/tweenengine/equations/Expo;

.field public static final OUT:Laurelienribon/tweenengine/equations/Expo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laurelienribon/tweenengine/equations/Expo$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Expo$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Expo;->IN:Laurelienribon/tweenengine/equations/Expo;

    new-instance v0, Laurelienribon/tweenengine/equations/Expo$2;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Expo$2;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Expo;->OUT:Laurelienribon/tweenengine/equations/Expo;

    new-instance v0, Laurelienribon/tweenengine/equations/Expo$3;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Expo$3;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Expo;->INOUT:Laurelienribon/tweenengine/equations/Expo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    return-void
.end method
