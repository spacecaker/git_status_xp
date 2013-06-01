.class public Lcom/iLoong/launcher/Widget3D/MainAppContext;
.super Ljava/lang/Object;


# instance fields
.field public gdx:Lcom/badlogic/gdx/Gdx;

.field public mContainerContext:Landroid/content/Context;

.field public mGdxApplication:Lcom/badlogic/gdx/backends/android/AndroidApplication;

.field public mThemeName:Ljava/lang/String;

.field public mWidgetContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/badlogic/gdx/backends/android/AndroidApplication;Lcom/badlogic/gdx/Gdx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iLoong/launcher/Widget3D/MainAppContext;->mThemeName:Ljava/lang/String;

    iput-object p1, p0, Lcom/iLoong/launcher/Widget3D/MainAppContext;->mContainerContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/iLoong/launcher/Widget3D/MainAppContext;->mWidgetContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/iLoong/launcher/Widget3D/MainAppContext;->mGdxApplication:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iput-object p4, p0, Lcom/iLoong/launcher/Widget3D/MainAppContext;->gdx:Lcom/badlogic/gdx/Gdx;

    return-void
.end method
