.class public interface abstract Laurelienribon/tweenengine/TweenPaths;
.super Ljava/lang/Object;


# static fields
.field public static final catmullRom:Laurelienribon/tweenengine/paths/CatmullRom;

.field public static final linear:Laurelienribon/tweenengine/paths/Linear;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laurelienribon/tweenengine/paths/Linear;

    invoke-direct {v0}, Laurelienribon/tweenengine/paths/Linear;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/TweenPaths;->linear:Laurelienribon/tweenengine/paths/Linear;

    new-instance v0, Laurelienribon/tweenengine/paths/CatmullRom;

    invoke-direct {v0}, Laurelienribon/tweenengine/paths/CatmullRom;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/TweenPaths;->catmullRom:Laurelienribon/tweenengine/paths/CatmullRom;

    return-void
.end method
