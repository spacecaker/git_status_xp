.class public Lcom/badlogic/gdx/backends/android/AndroidGLU;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/badlogic/gdx/graphics/GLU;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gluLookAt(Lcom/badlogic/gdx/graphics/GL10;FFFFFFFFF)V
    .locals 10

    check-cast p1, Lcom/badlogic/gdx/backends/android/AndroidGL10;

    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    return-void
.end method

.method public gluOrtho2D(Lcom/badlogic/gdx/graphics/GL10;FFFF)V
    .locals 1

    check-cast p1, Lcom/badlogic/gdx/backends/android/AndroidGL10;

    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {v0, p2, p3, p4, p5}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    return-void
.end method

.method public gluPerspective(Lcom/badlogic/gdx/graphics/GL10;FFFF)V
    .locals 1

    check-cast p1, Lcom/badlogic/gdx/backends/android/AndroidGL10;

    iget-object v0, p1, Lcom/badlogic/gdx/backends/android/AndroidGL10;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {v0, p2, p3, p4, p5}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    return-void
.end method

.method public gluProject(FFF[FI[FI[II[FI)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static/range {p1 .. p11}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gluUnProject(FFF[FI[FI[II[FI)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static/range {p1 .. p11}, Landroid/opengl/GLU;->gluUnProject(FFF[FI[FI[II[FI)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
