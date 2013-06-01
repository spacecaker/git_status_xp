.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$SimpleEGLConfigChooser;
.super Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$ComponentSizeChooser;


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;Z)V
    .locals 8

    const/4 v2, 0x5

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$SimpleEGLConfigChooser;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;

    const/4 v3, 0x6

    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView;IIIIII)V

    return-void

    :cond_0
    move v6, v5

    goto :goto_0
.end method
