.class public Lcom/badlogic/gdx/backends/android/surfaceview/GLDebugHelper;
.super Ljava/lang/Object;


# static fields
.field public static final CONFIG_CHECK_GL_ERROR:I = 0x1

.field public static final CONFIG_CHECK_THREAD:I = 0x2

.field public static final CONFIG_LOG_ARGUMENT_NAMES:I = 0x4

.field public static final ERROR_WRONG_THREAD:I = 0x7000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)Ljavax/microedition/khronos/egl/EGL;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/EGLLogWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/EGLLogWrapper;-><init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;
    .locals 3

    if-eqz p1, :cond_2

    new-instance v2, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;

    invoke-direct {v2, p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;I)V

    :goto_0
    if-eqz p2, :cond_1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;

    invoke-direct {v1, v2, p2, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_2

    :cond_2
    move-object v2, p0

    goto :goto_0
.end method
