.class Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;
.super Lcom/badlogic/gdx/backends/android/surfaceview/GLWrapperBase;


# static fields
.field private static final FORMAT_FIXED:I = 0x2

.field private static final FORMAT_FLOAT:I = 0x1

.field private static final FORMAT_INT:I


# instance fields
.field private mArgCount:I

.field mColorArrayEnabled:Z

.field private mColorPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

.field private mLog:Ljava/io/Writer;

.field private mLogArgumentNames:Z

.field mNormalArrayEnabled:Z

.field private mNormalPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

.field mStringBuilder:Ljava/lang/StringBuilder;

.field private mTexCoordPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

.field mTextureCoordArrayEnabled:Z

.field mVertexArrayEnabled:Z

.field private mVertexPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLWrapperBase;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mLog:Ljava/io/Writer;

    iput-boolean p3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mLogArgumentNames:Z

    return-void
.end method

.method private arg(Ljava/lang/String;F)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[FI)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(I[FI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[SI)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(I[SI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mArgCount:I

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private argPointer(IIILjava/nio/Buffer;)V
    .locals 2

    const-string v0, "size"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "type"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getPointerTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stride"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pointer"

    invoke-virtual {p4}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private begin(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mArgCount:I

    return-void
.end method

.method private bindArrays()V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTexCoordPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    :cond_3
    return-void
.end method

.method private checkError()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->logLine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;I)V
    .locals 8

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_1

    const-string v0, "undefined"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget v0, p4, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->mStride:I

    if-gez v0, :cond_2

    const-string v0, "invalid stride"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->getStride()I

    move-result v0

    iget-object v2, p4, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    iget v3, p4, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->mSize:I

    iget v4, p4, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->mType:I

    invoke-virtual {p4, v4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->sizeof(I)I

    move-result v5

    mul-int v1, v0, p5

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_3

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    sparse-switch v4, :sswitch_data_0

    const-string v6, "?"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v6

    div-int/lit8 v7, v1, 0x2

    invoke-virtual {v6, v7}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    div-int/lit8 v7, v1, 0x4

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    div-int/lit8 v7, v1, 0x4

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1400 -> :sswitch_0
        0x1401 -> :sswitch_1
        0x1402 -> :sswitch_2
        0x1406 -> :sswitch_4
        0x140c -> :sswitch_3
    .end sparse-switch
.end method

.method private doElement(Ljava/lang/StringBuilder;II)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexArrayEnabled:Z

    const-string v3, "v"

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;I)V

    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalArrayEnabled:Z

    const-string v3, "n"

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;I)V

    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorArrayEnabled:Z

    const-string v3, "c"

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;I)V

    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    const-string v3, "t"

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTexCoordPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;I)V

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private end()V
    .locals 1

    const-string v0, ");\n"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->flush()V

    return-void
.end method

.method private endLogIndices()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->unbindArrays()V

    return-void
.end method

.method private flush()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mLog:Ljava/io/Writer;

    goto :goto_0
.end method

.method private formattedAppend(Ljava/lang/StringBuilder;II)V
    .locals 2

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    int-to-float v0, p2

    const/high16 v1, 0x4780

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getBeginMode(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GL_POINTS"

    goto :goto_0

    :pswitch_1
    const-string v0, "GL_LINES"

    goto :goto_0

    :pswitch_2
    const-string v0, "GL_LINE_LOOP"

    goto :goto_0

    :pswitch_3
    const-string v0, "GL_LINE_STRIP"

    goto :goto_0

    :pswitch_4
    const-string v0, "GL_TRIANGLES"

    goto :goto_0

    :pswitch_5
    const-string v0, "GL_TRIANGLE_STRIP"

    goto :goto_0

    :pswitch_6
    const-string v0, "GL_TRIANGLE_FAN"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getCap(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "GL_FOG"

    goto :goto_0

    :sswitch_1
    const-string v0, "GL_LIGHTING"

    goto :goto_0

    :sswitch_2
    const-string v0, "GL_TEXTURE_2D"

    goto :goto_0

    :sswitch_3
    const-string v0, "GL_CULL_FACE"

    goto :goto_0

    :sswitch_4
    const-string v0, "GL_ALPHA_TEST"

    goto :goto_0

    :sswitch_5
    const-string v0, "GL_BLEND"

    goto :goto_0

    :sswitch_6
    const-string v0, "GL_COLOR_LOGIC_OP"

    goto :goto_0

    :sswitch_7
    const-string v0, "GL_DITHER"

    goto :goto_0

    :sswitch_8
    const-string v0, "GL_STENCIL_TEST"

    goto :goto_0

    :sswitch_9
    const-string v0, "GL_DEPTH_TEST"

    goto :goto_0

    :sswitch_a
    const-string v0, "GL_LIGHT0"

    goto :goto_0

    :sswitch_b
    const-string v0, "GL_LIGHT1"

    goto :goto_0

    :sswitch_c
    const-string v0, "GL_LIGHT2"

    goto :goto_0

    :sswitch_d
    const-string v0, "GL_LIGHT3"

    goto :goto_0

    :sswitch_e
    const-string v0, "GL_LIGHT4"

    goto :goto_0

    :sswitch_f
    const-string v0, "GL_LIGHT5"

    goto :goto_0

    :sswitch_10
    const-string v0, "GL_LIGHT6"

    goto :goto_0

    :sswitch_11
    const-string v0, "GL_LIGHT7"

    goto :goto_0

    :sswitch_12
    const-string v0, "GL_POINT_SMOOTH"

    goto :goto_0

    :sswitch_13
    const-string v0, "GL_LINE_SMOOTH"

    goto :goto_0

    :sswitch_14
    const-string v0, "GL_COLOR_MATERIAL"

    goto :goto_0

    :sswitch_15
    const-string v0, "GL_NORMALIZE"

    goto :goto_0

    :sswitch_16
    const-string v0, "GL_RESCALE_NORMAL"

    goto :goto_0

    :sswitch_17
    const-string v0, "GL_VERTEX_ARRAY"

    goto :goto_0

    :sswitch_18
    const-string v0, "GL_NORMAL_ARRAY"

    goto :goto_0

    :sswitch_19
    const-string v0, "GL_COLOR_ARRAY"

    goto :goto_0

    :sswitch_1a
    const-string v0, "GL_TEXTURE_COORD_ARRAY"

    goto :goto_0

    :sswitch_1b
    const-string v0, "GL_MULTISAMPLE"

    goto :goto_0

    :sswitch_1c
    const-string v0, "GL_SAMPLE_ALPHA_TO_COVERAGE"

    goto :goto_0

    :sswitch_1d
    const-string v0, "GL_SAMPLE_ALPHA_TO_ONE"

    goto :goto_0

    :sswitch_1e
    const-string v0, "GL_SAMPLE_COVERAGE"

    goto :goto_0

    :sswitch_1f
    const-string v0, "GL_SCISSOR_TEST"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb10 -> :sswitch_12
        0xb20 -> :sswitch_13
        0xb44 -> :sswitch_3
        0xb50 -> :sswitch_1
        0xb57 -> :sswitch_14
        0xb60 -> :sswitch_0
        0xb71 -> :sswitch_9
        0xb90 -> :sswitch_8
        0xba1 -> :sswitch_15
        0xbc0 -> :sswitch_4
        0xbd0 -> :sswitch_7
        0xbe2 -> :sswitch_5
        0xbf2 -> :sswitch_6
        0xc11 -> :sswitch_1f
        0xde1 -> :sswitch_2
        0x4000 -> :sswitch_a
        0x4001 -> :sswitch_b
        0x4002 -> :sswitch_c
        0x4003 -> :sswitch_d
        0x4004 -> :sswitch_e
        0x4005 -> :sswitch_f
        0x4006 -> :sswitch_10
        0x4007 -> :sswitch_11
        0x803a -> :sswitch_16
        0x8074 -> :sswitch_17
        0x8075 -> :sswitch_18
        0x8076 -> :sswitch_19
        0x8078 -> :sswitch_1a
        0x809d -> :sswitch_1b
        0x809e -> :sswitch_1c
        0x809f -> :sswitch_1d
        0x80a0 -> :sswitch_1e
    .end sparse-switch
.end method

.method private getClearBufferMask(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_6

    const-string v0, "GL_DEPTH_BUFFER_BIT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, p1, -0x101

    :goto_0
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "GL_STENCIL_BUFFER_BIT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, v0, -0x401

    :cond_1
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "GL_COLOR_BUFFER_BIT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v0, v0, -0x4001

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    move v0, p1

    goto :goto_0
.end method

.method private getClientState(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "GL_COLOR_ARRAY"

    goto :goto_0

    :pswitch_2
    const-string v0, "GL_VERTEX_ARRAY"

    goto :goto_0

    :pswitch_3
    const-string v0, "GL_NORMAL_ARRAY"

    goto :goto_0

    :pswitch_4
    const-string v0, "GL_TEXTURE_COORD_ARRAY"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "GL_NO_ERROR"

    goto :goto_0

    :sswitch_1
    const-string v0, "GL_INVALID_ENUM"

    goto :goto_0

    :sswitch_2
    const-string v0, "GL_INVALID_VALUE"

    goto :goto_0

    :sswitch_3
    const-string v0, "GL_INVALID_OPERATION"

    goto :goto_0

    :sswitch_4
    const-string v0, "GL_STACK_OVERFLOW"

    goto :goto_0

    :sswitch_5
    const-string v0, "GL_STACK_UNDERFLOW"

    goto :goto_0

    :sswitch_6
    const-string v0, "GL_OUT_OF_MEMORY"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x500 -> :sswitch_1
        0x501 -> :sswitch_2
        0x502 -> :sswitch_3
        0x503 -> :sswitch_4
        0x504 -> :sswitch_5
        0x505 -> :sswitch_6
    .end sparse-switch
.end method

.method private getFaceName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GL_FRONT_AND_BACK"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x408
        :pswitch_0
    .end packed-switch
.end method

.method private getFactor(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "GL_ZERO"

    goto :goto_0

    :sswitch_1
    const-string v0, "GL_ONE"

    goto :goto_0

    :sswitch_2
    const-string v0, "GL_SRC_COLOR"

    goto :goto_0

    :sswitch_3
    const-string v0, "GL_ONE_MINUS_SRC_COLOR"

    goto :goto_0

    :sswitch_4
    const-string v0, "GL_DST_COLOR"

    goto :goto_0

    :sswitch_5
    const-string v0, "GL_ONE_MINUS_DST_COLOR"

    goto :goto_0

    :sswitch_6
    const-string v0, "GL_SRC_ALPHA"

    goto :goto_0

    :sswitch_7
    const-string v0, "GL_ONE_MINUS_SRC_ALPHA"

    goto :goto_0

    :sswitch_8
    const-string v0, "GL_DST_ALPHA"

    goto :goto_0

    :sswitch_9
    const-string v0, "GL_ONE_MINUS_DST_ALPHA"

    goto :goto_0

    :sswitch_a
    const-string v0, "GL_SRC_ALPHA_SATURATE"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x300 -> :sswitch_2
        0x301 -> :sswitch_3
        0x302 -> :sswitch_6
        0x303 -> :sswitch_7
        0x304 -> :sswitch_8
        0x305 -> :sswitch_9
        0x306 -> :sswitch_4
        0x307 -> :sswitch_5
        0x308 -> :sswitch_a
    .end sparse-switch
.end method

.method private getFogPName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GL_FOG_DENSITY"

    goto :goto_0

    :pswitch_1
    const-string v0, "GL_FOG_START"

    goto :goto_0

    :pswitch_2
    const-string v0, "GL_FOG_END"

    goto :goto_0

    :pswitch_3
    const-string v0, "GL_FOG_MODE"

    goto :goto_0

    :pswitch_4
    const-string v0, "GL_FOG_COLOR"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb62
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getFogParamCount(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb62
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHintMode(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GL_FASTEST"

    goto :goto_0

    :pswitch_1
    const-string v0, "GL_NICEST"

    goto :goto_0

    :pswitch_2
    const-string v0, "GL_DONT_CARE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1100
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getHintTarget(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "GL_FOG_HINT"

    goto :goto_0

    :sswitch_1
    const-string v0, "GL_LINE_SMOOTH_HINT"

    goto :goto_0

    :sswitch_2
    const-string v0, "GL_PERSPECTIVE_CORRECTION_HINT"

    goto :goto_0

    :sswitch_3
    const-string v0, "GL_POINT_SMOOTH_HINT"

    goto :goto_0

    :sswitch_4
    const-string v0, "GL_POLYGON_SMOOTH_HINT"

    goto :goto_0

    :sswitch_5
    const-string v0, "GL_GENERATE_MIPMAP_HINT"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc50 -> :sswitch_2
        0xc51 -> :sswitch_3
        0xc52 -> :sswitch_1
        0xc53 -> :sswitch_4
        0xc54 -> :sswitch_0
        0x8192 -> :sswitch_5
    .end sparse-switch
.end method

.method private getIndexType(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "GL_UNSIGNED_SHORT"

    goto :goto_0

    :pswitch_2
    const-string v0, "GL_UNSIGNED_BYTE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1401
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIntegerStateFormat(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x898d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getIntegerStateName(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "GL_ALPHA_BITS"

    goto :goto_0

    :sswitch_1
    const-string v0, "GL_ALIASED_LINE_WIDTH_RANGE"

    goto :goto_0

    :sswitch_2
    const-string v0, "GL_ALIASED_POINT_SIZE_RANGE"

    goto :goto_0

    :sswitch_3
    const-string v0, "GL_BLUE_BITS"

    goto :goto_0

    :sswitch_4
    const-string v0, "GL_COMPRESSED_TEXTURE_FORMATS"

    goto :goto_0

    :sswitch_5
    const-string v0, "GL_DEPTH_BITS"

    goto :goto_0

    :sswitch_6
    const-string v0, "GL_GREEN_BITS"

    goto :goto_0

    :sswitch_7
    const-string v0, "GL_MAX_ELEMENTS_INDICES"

    goto :goto_0

    :sswitch_8
    const-string v0, "GL_MAX_ELEMENTS_VERTICES"

    goto :goto_0

    :sswitch_9
    const-string v0, "GL_MAX_LIGHTS"

    goto :goto_0

    :sswitch_a
    const-string v0, "GL_MAX_TEXTURE_SIZE"

    goto :goto_0

    :sswitch_b
    const-string v0, "GL_MAX_VIEWPORT_DIMS"

    goto :goto_0

    :sswitch_c
    const-string v0, "GL_MAX_MODELVIEW_STACK_DEPTH"

    goto :goto_0

    :sswitch_d
    const-string v0, "GL_MAX_PROJECTION_STACK_DEPTH"

    goto :goto_0

    :sswitch_e
    const-string v0, "GL_MAX_TEXTURE_STACK_DEPTH"

    goto :goto_0

    :sswitch_f
    const-string v0, "GL_MAX_TEXTURE_UNITS"

    goto :goto_0

    :sswitch_10
    const-string v0, "GL_NUM_COMPRESSED_TEXTURE_FORMATS"

    goto :goto_0

    :sswitch_11
    const-string v0, "GL_RED_BITS"

    goto :goto_0

    :sswitch_12
    const-string v0, "GL_SMOOTH_LINE_WIDTH_RANGE"

    goto :goto_0

    :sswitch_13
    const-string v0, "GL_SMOOTH_POINT_SIZE_RANGE"

    goto :goto_0

    :sswitch_14
    const-string v0, "GL_STENCIL_BITS"

    goto :goto_0

    :sswitch_15
    const-string v0, "GL_SUBPIXEL_BITS"

    goto :goto_0

    :sswitch_16
    const-string v0, "GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES"

    goto :goto_0

    :sswitch_17
    const-string v0, "GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES"

    goto :goto_0

    :sswitch_18
    const-string v0, "GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb12 -> :sswitch_13
        0xb22 -> :sswitch_12
        0xd31 -> :sswitch_9
        0xd33 -> :sswitch_a
        0xd36 -> :sswitch_c
        0xd38 -> :sswitch_d
        0xd39 -> :sswitch_e
        0xd3a -> :sswitch_b
        0xd50 -> :sswitch_15
        0xd52 -> :sswitch_11
        0xd53 -> :sswitch_6
        0xd54 -> :sswitch_3
        0xd55 -> :sswitch_0
        0xd56 -> :sswitch_5
        0xd57 -> :sswitch_14
        0x80e8 -> :sswitch_8
        0x80e9 -> :sswitch_7
        0x846d -> :sswitch_2
        0x846e -> :sswitch_1
        0x84e2 -> :sswitch_f
        0x86a2 -> :sswitch_10
        0x86a3 -> :sswitch_4
        0x898d -> :sswitch_16
        0x898e -> :sswitch_17
        0x898f -> :sswitch_18
    .end sparse-switch
.end method

.method private getIntegerStateSize(I)I
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    move v0, v2

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    move v0, v1

    goto :goto_0

    :sswitch_3
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x86a2

    invoke-interface {v1, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    aget v0, v0, v2

    goto :goto_0

    :sswitch_4
    move v0, v1

    goto :goto_0

    :sswitch_5
    move v0, v1

    goto :goto_0

    :sswitch_6
    move v0, v1

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb12 -> :sswitch_6
        0xb22 -> :sswitch_5
        0xd31 -> :sswitch_0
        0xd33 -> :sswitch_0
        0xd36 -> :sswitch_0
        0xd38 -> :sswitch_0
        0xd39 -> :sswitch_0
        0xd3a -> :sswitch_4
        0xd50 -> :sswitch_0
        0xd52 -> :sswitch_0
        0xd53 -> :sswitch_0
        0xd54 -> :sswitch_0
        0xd55 -> :sswitch_0
        0xd56 -> :sswitch_0
        0xd57 -> :sswitch_0
        0x80e8 -> :sswitch_0
        0x80e9 -> :sswitch_0
        0x846d -> :sswitch_2
        0x846e -> :sswitch_1
        0x84e2 -> :sswitch_0
        0x86a2 -> :sswitch_0
        0x86a3 -> :sswitch_3
        0x898d -> :sswitch_7
        0x898e -> :sswitch_7
        0x898f -> :sswitch_7
    .end sparse-switch
.end method

.method private getLightModelPName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GL_LIGHT_MODEL_AMBIENT"

    goto :goto_0

    :pswitch_1
    const-string v0, "GL_LIGHT_MODEL_TWO_SIDE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb52
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLightModelParamCount(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb52
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLightName(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x4000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x4007

    if-gt p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GL_LIGHT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getLightPName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GL_AMBIENT"

    goto :goto_0

    :pswitch_1
    const-string v0, "GL_DIFFUSE"

    goto :goto_0

    :pswitch_2
    const-string v0, "GL_SPECULAR"

    goto :goto_0

    :pswitch_3
    const-string v0, "GL_POSITION"

    goto :goto_0

    :pswitch_4
    const-string v0, "GL_SPOT_DIRECTION"

    goto :goto_0

    :pswitch_5
    const-string v0, "GL_SPOT_EXPONENT"

    goto :goto_0

    :pswitch_6
    const-string v0, "GL_SPOT_CUTOFF"

    goto :goto_0

    :pswitch_7
    const-string v0, "GL_CONSTANT_ATTENUATION"

    goto :goto_0

    :pswitch_8
    const-string v0, "GL_LINEAR_ATTENUATION"

    goto :goto_0

    :pswitch_9
    const-string v0, "GL_QUADRATIC_ATTENUATION"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getLightParamCount(I)I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getMaterialPName(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "GL_AMBIENT"

    goto :goto_0

    :sswitch_1
    const-string v0, "GL_DIFFUSE"

    goto :goto_0

    :sswitch_2
    const-string v0, "GL_SPECULAR"

    goto :goto_0

    :sswitch_3
    const-string v0, "GL_EMISSION"

    goto :goto_0

    :sswitch_4
    const-string v0, "GL_SHININESS"

    goto :goto_0

    :sswitch_5
    const-string v0, "GL_AMBIENT_AND_DIFFUSE"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1200 -> :sswitch_0
        0x1201 -> :sswitch_1
        0x1202 -> :sswitch_2
        0x1600 -> :sswitch_3
        0x1601 -> :sswitch_4
        0x1602 -> :sswitch_5
    .end sparse-switch
.end method

.method private getMaterialParamCount(I)I
    .locals 1

    const/4 v0, 0x4

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1200 -> :sswitch_0
        0x1201 -> :sswitch_0
        0x1202 -> :sswitch_0
        0x1600 -> :sswitch_0
        0x1601 -> :sswitch_1
        0x1602 -> :sswitch_0
    .end sparse-switch
.end method

.method private getMatrixMode(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GL_MODELVIEW"

    goto :goto_0

    :pswitch_1
    const-string v0, "GL_PROJECTION"

    goto :goto_0

    :pswitch_2
    const-string v0, "GL_TEXTURE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPointerTypeName(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "GL_BYTE"

    goto :goto_0

    :sswitch_1
    const-string v0, "GL_UNSIGNED_BYTE"

    goto :goto_0

    :sswitch_2
    const-string v0, "GL_SHORT"

    goto :goto_0

    :sswitch_3
    const-string v0, "GL_FIXED"

    goto :goto_0

    :sswitch_4
    const-string v0, "GL_FLOAT"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1400 -> :sswitch_0
        0x1401 -> :sswitch_1
        0x1402 -> :sswitch_2
        0x1406 -> :sswitch_4
        0x140c -> :sswitch_3
    .end sparse-switch
.end method

.method private getShadeModel(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GL_FLAT"

    goto :goto_0

    :pswitch_1
    const-string v0, "GL_SMOOTH"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1d00
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTextureEnvPName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GL_TEXTURE_ENV_MODE"

    goto :goto_0

    :pswitch_1
    const-string v0, "GL_TEXTURE_ENV_COLOR"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2200
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTextureEnvParamCount(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2200
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTextureEnvParamName(F)Ljava/lang/String;
    .locals 2

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "GL_REPLACE"

    goto :goto_0

    :sswitch_1
    const-string v0, "GL_MODULATE"

    goto :goto_0

    :sswitch_2
    const-string v0, "GL_DECAL"

    goto :goto_0

    :sswitch_3
    const-string v0, "GL_BLEND"

    goto :goto_0

    :sswitch_4
    const-string v0, "GL_ADD"

    goto :goto_0

    :sswitch_5
    const-string v0, "GL_COMBINE"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x104 -> :sswitch_4
        0xbe2 -> :sswitch_3
        0x1e01 -> :sswitch_0
        0x2100 -> :sswitch_1
        0x2101 -> :sswitch_2
        0x8570 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTextureEnvTarget(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GL_TEXTURE_ENV"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2300
        :pswitch_0
    .end packed-switch
.end method

.method private getTexturePName(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "GL_TEXTURE_MAG_FILTER"

    goto :goto_0

    :sswitch_1
    const-string v0, "GL_TEXTURE_MIN_FILTER"

    goto :goto_0

    :sswitch_2
    const-string v0, "GL_TEXTURE_WRAP_S"

    goto :goto_0

    :sswitch_3
    const-string v0, "GL_TEXTURE_WRAP_T"

    goto :goto_0

    :sswitch_4
    const-string v0, "GL_GENERATE_MIPMAP"

    goto :goto_0

    :sswitch_5
    const-string v0, "GL_TEXTURE_CROP_RECT_OES"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2800 -> :sswitch_0
        0x2801 -> :sswitch_1
        0x2802 -> :sswitch_2
        0x2803 -> :sswitch_3
        0x8191 -> :sswitch_4
        0x8b9d -> :sswitch_5
    .end sparse-switch
.end method

.method private getTextureParamName(F)Ljava/lang/String;
    .locals 2

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "GL_CLAMP_TO_EDGE"

    goto :goto_0

    :sswitch_1
    const-string v0, "GL_REPEAT"

    goto :goto_0

    :sswitch_2
    const-string v0, "GL_NEAREST"

    goto :goto_0

    :sswitch_3
    const-string v0, "GL_LINEAR"

    goto :goto_0

    :sswitch_4
    const-string v0, "GL_NEAREST_MIPMAP_NEAREST"

    goto :goto_0

    :sswitch_5
    const-string v0, "GL_LINEAR_MIPMAP_NEAREST"

    goto :goto_0

    :sswitch_6
    const-string v0, "GL_NEAREST_MIPMAP_LINEAR"

    goto :goto_0

    :sswitch_7
    const-string v0, "GL_LINEAR_MIPMAP_LINEAR"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2600 -> :sswitch_2
        0x2601 -> :sswitch_3
        0x2700 -> :sswitch_4
        0x2701 -> :sswitch_5
        0x2702 -> :sswitch_6
        0x2703 -> :sswitch_7
        0x2901 -> :sswitch_1
        0x812f -> :sswitch_0
    .end sparse-switch
.end method

.method private getTextureTarget(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GL_TEXTURE_2D"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xde1
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private returns(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ") returns "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->flush()V

    return-void
.end method

.method private startLogIndices()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->bindArrays()V

    return-void
.end method

.method private toCharIndices(IILjava/nio/Buffer;)[C
    .locals 5

    const/4 v0, 0x0

    new-array v1, p1, [C

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    :pswitch_1
    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    :goto_1
    if-ge v0, p1, :cond_0

    add-int v4, v2, v0

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    aput-char v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    instance-of v2, p3, Ljava/nio/CharBuffer;

    if-eqz v2, :cond_1

    check-cast p3, Ljava/nio/CharBuffer;

    :goto_2
    invoke-virtual {p3}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    invoke-virtual {p3, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p3, v1}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    invoke-virtual {p3, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object p3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1401
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private toString(IILjava/nio/IntBuffer;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private toString(II[II)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int v3, p4, v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v2, :cond_2

    :cond_1
    const-string v3, "out of bounds"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget v3, p3, v3

    invoke-direct {p0, v1, v3, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    goto :goto_1
.end method

.method private toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v0}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private toString(I[FI)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int v3, p3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v2, :cond_2

    :cond_1
    const-string v3, "out of bounds"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget v3, p2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private toString(I[SI)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int v3, p3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v2, :cond_2

    :cond_1
    const-string v3, "out of bounds"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-short v3, p2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private unbindArrays()V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTexCoordPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    :cond_3
    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1

    const-string v0, "glActiveTexture"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "texture"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1

    const-string v0, "glAlphaFunc"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "ref"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1

    const-string v0, "glAlphaFuncx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "ref"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glBindTexture(II)V
    .locals 2

    const-string v0, "glBindTexture"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "texture"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBlendFunc(II)V
    .locals 2

    const-string v0, "glBlendFunc"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "sfactor"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dfactor"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glClear(I)V
    .locals 2

    const-string v0, "glClear"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mask"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getClearBufferMask(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1

    const-string v0, "glClearColor"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "red"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1

    const-string v0, "glClearColor"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "red"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1

    const-string v0, "glClearDepthf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "depth"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1

    const-string v0, "glClearDepthx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "depth"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearStencil(I)V
    .locals 1

    const-string v0, "glClearStencil"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "s"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1

    const-string v0, "glClientActiveTexture"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "texture"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "plane"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 2

    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "plane"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "plane"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 2

    const-string v0, "glClipPlanex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "plane"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1

    const-string v0, "glColor4f"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "red"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glColor4x(IIII)V
    .locals 1

    const-string v0, "glColor4x"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "red"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1

    const-string v0, "glColorMask"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "red"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 6

    const-string v0, "glColorPointer"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 10

    const-string v1, "glCompressedTexImage2D"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v1, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "internalformat"

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "width"

    invoke-direct {p0, v1, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    invoke-direct {p0, v1, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "border"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "imageSize"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "data"

    invoke-virtual/range {p8 .. p8}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11

    const-string v1, "glCompressedTexSubImage2D"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v1, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "xoffset"

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "yoffset"

    invoke-direct {p0, v1, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "width"

    move/from16 v0, p5

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "format"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "imageSize"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "data"

    invoke-virtual/range {p9 .. p9}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 10

    const-string v1, "glCopyTexImage2D"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v1, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "internalformat"

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "x"

    invoke-direct {p0, v1, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-direct {p0, v1, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "width"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "border"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 10

    const-string v1, "glCopyTexSubImage2D"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v1, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "xoffset"

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "yoffset"

    invoke-direct {p0, v1, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "x"

    invoke-direct {p0, v1, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "y"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "width"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCullFace(I)V
    .locals 1

    const-string v0, "glCullFace"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDeleteBuffers(I[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    const-string v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "textures"

    invoke-direct {p0, v0, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1

    const-string v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "textures"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1

    const-string v0, "glDepthFunc"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1

    const-string v0, "glDepthMask"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "flag"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1

    const-string v0, "glDepthRangef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "near"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "far"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1

    const-string v0, "glDepthRangex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "near"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "far"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDisable(I)V
    .locals 2

    const-string v0, "glDisable"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "cap"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDisableClientState(I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "glDisableClientState"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "array"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void

    :pswitch_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorArrayEnabled:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalArrayEnabled:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    goto :goto_0

    :pswitch_4
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexArrayEnabled:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public glDrawArrays(III)V
    .locals 3

    const-string v0, "glDrawArrays"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "first"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "count"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->startLogIndices()V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->endLogIndices()V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    add-int v2, p2, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 5

    const-string v0, "glDrawElements"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getBeginMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "count"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "type"

    invoke-direct {p0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIndexType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toCharIndices(IILjava/nio/Buffer;)[C

    move-result-object v1

    array-length v2, v1

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->startLogIndices()V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->endLogIndices()V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    aget-char v4, v1, v0

    invoke-direct {p0, v3, v0, v4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 6

    const-string v0, "glDrawTexfOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "width"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glDrawTexfvOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 2

    const-string v0, "glDrawTexfvOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 6

    const-string v0, "glDrawTexiOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "width"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glDrawTexivOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 2

    const-string v0, "glDrawTexivOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 6

    const-string v0, "glDrawTexsOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "width"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 2

    const-string v0, "glDrawTexsvOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 2

    const-string v0, "glDrawTexsvOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[SI)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 6

    const-string v0, "glDrawTexxOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "width"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glDrawTexxvOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 2

    const-string v0, "glDrawTexxvOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glEnable(I)V
    .locals 2

    const-string v0, "glEnable"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "cap"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glEnableClientState(I)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "glEnableClientState"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "array"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void

    :pswitch_1
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mColorArrayEnabled:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalArrayEnabled:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    goto :goto_0

    :pswitch_4
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexArrayEnabled:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public glFinish()V
    .locals 1

    const-string v0, "glFinish"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFlush()V
    .locals 1

    const-string v0, "glFlush"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogf(IF)V
    .locals 1

    const-string v0, "glFogf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "param"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glFogfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 2

    const-string v0, "glFogfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogx(II)V
    .locals 2

    const-string v0, "glFogx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glFogxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(I[II)V
    .locals 2

    const-string v0, "glFogxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFrontFace(I)V
    .locals 1

    const-string v0, "glFrontFace"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 7

    const-string v0, "glFrustumf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "right"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "top"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "near"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7

    const-string v0, "glFrustumx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "right"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "top"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "near"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGenBuffers(I[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGenTextures"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "textures"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 2

    const-string v0, "glGenTextures"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "n"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "textures"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanex(I[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetError()I
    .locals 1

    const-string v0, "glGetError"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(I)V

    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetFixedv(I[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetFloatv(I[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetIntegerv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 2

    const-string v0, "glGetIntegerv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetLightfv(II[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetLightxv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialxv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1

    const-string v0, "glGetString"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "name"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-object v0
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexEnviv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glHint(II)V
    .locals 2

    const-string v0, "glHint"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHintTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getHintMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glIsEnabled(I)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glIsTexture(I)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glLightModelf(IF)V
    .locals 2

    const-string v0, "glLightModelf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 2

    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelx(II)V
    .locals 2

    const-string v0, "glLightModelx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 2

    const-string v0, "glLightModelxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightf(IIF)V
    .locals 2

    const-string v0, "glLightf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glLightfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 2

    const-string v0, "glLightfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightx(III)V
    .locals 2

    const-string v0, "glLightx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glLightxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(II[II)V
    .locals 2

    const-string v0, "glLightxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLineWidth(F)V
    .locals 1

    const-string v0, "glLineWidth"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "width"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1

    const-string v0, "glLineWidthx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "width"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    const-string v0, "glLoadIdentity"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glLoadMatrixf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 2

    const-string v0, "glLoadMatrixf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glLoadMatrixx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 2

    const-string v0, "glLoadMatrixx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLogicOp(I)V
    .locals 1

    const-string v0, "glLogicOp"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "opcode"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 2

    const-string v0, "glMaterialf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glMaterialfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 2

    const-string v0, "glMaterialfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialx(III)V
    .locals 2

    const-string v0, "glMaterialx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glMaterialxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 2

    const-string v0, "glMaterialxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMatrixMode(I)V
    .locals 2

    const-string v0, "glMatrixMode"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getMatrixMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glMultMatrixf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 2

    const-string v0, "glMultMatrixf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glMultMatrixx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 2

    const-string v0, "glMultMatrixx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 6

    const-string v0, "glMultiTexCoord4f"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "s"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "t"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "r"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "q"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 6

    const-string v0, "glMultiTexCoord4x"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "s"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "t"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "r"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "q"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1

    const-string v0, "glNormal3f"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "nx"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "ny"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "nz"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glNormal3x(III)V
    .locals 1

    const-string v0, "glNormal3x"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "nx"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "ny"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "nz"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 6

    const-string v0, "glNormalPointer"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "stride"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pointer"

    invoke-virtual {p3}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    const/4 v2, 0x3

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mNormalPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 7

    const-string v0, "glOrthof"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "right"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "top"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "near"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7

    const-string v0, "glOrthox"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "right"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "top"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "near"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1

    const-string v0, "glPixelStorei"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "param"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterfv(I[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterx(II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterxv(I[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointSize(F)V
    .locals 1

    const-string v0, "glPointSize"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "size"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointSizex(I)V
    .locals 1

    const-string v0, "glPointSizex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "size"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1

    const-string v0, "glPolygonOffset"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "factor"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "units"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1

    const-string v0, "glPolygonOffsetx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "factor"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "units"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    const-string v0, "glPopMatrix"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    const-string v0, "glPushMatrix"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 3

    const/16 v2, 0x10

    const-string v0, "glQueryMatrixxOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mantissa"

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "exponent"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v2, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 3

    const/16 v2, 0x10

    const-string v0, "glQueryMatrixxOES"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mantissa"

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "exponent"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8

    const-string v0, "glReadPixels"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "width"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "format"

    invoke-direct {p0, v0, p5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "type"

    invoke-direct {p0, v0, p6}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "pixels"

    invoke-virtual {p7}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1

    const-string v0, "glRotatef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "angle"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "x"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "y"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "z"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1

    const-string v0, "glRotatex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "angle"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "x"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "y"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "z"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1

    const-string v0, "glSampleCoveragex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "value"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "invert"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1

    const-string v0, "glSampleCoveragex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "value"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "invert"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glScalef(FFF)V
    .locals 1

    const-string v0, "glScalef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glScalex(III)V
    .locals 1

    const-string v0, "glScalex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glScissor(IIII)V
    .locals 1

    const-string v0, "glScissor"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "width"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glShadeModel(I)V
    .locals 2

    const-string v0, "glShadeModel"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getShadeModel(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1

    const-string v0, "glStencilFunc"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "ref"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "mask"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glStencilMask(I)V
    .locals 1

    const-string v0, "glStencilMask"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "mask"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glStencilOp(III)V
    .locals 1

    const-string v0, "glStencilOp"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "zfail"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "zpass"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 6

    const-string v0, "glTexCoordPointer"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mTexCoordPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 2

    const-string v0, "glTexEnvf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-direct {p0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvParamName(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glTexEnvfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 2

    const-string v0, "glTexEnvfv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexEnviv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexEnvx(III)V
    .locals 2

    const-string v0, "glTexEnvx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexEnvxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 2

    const-string v0, "glTexEnvxv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string v0, "offset"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11

    const-string v1, "glTexImage2D"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v1, "target"

    invoke-direct {p0, v1, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "level"

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "internalformat"

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "width"

    invoke-direct {p0, v1, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v0, p5

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "border"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "format"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "type"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "pixels"

    invoke-virtual/range {p9 .. p9}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 2

    const-string v0, "glTexParameterf"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-direct {p0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureParamName(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameterfv(II[FI)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameteri(III)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexParameteriv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 2

    const-string v0, "glTexParameteriv"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "params"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterx(III)V
    .locals 2

    const-string v0, "glTexParameterx"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pname"

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameterxv(II[II)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11

    const-string v1, "glTexSubImage2D"

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v1, "target"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    invoke-direct {p0, v1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "xoffset"

    invoke-direct {p0, v1, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "yoffset"

    invoke-direct {p0, v1, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "width"

    move/from16 v0, p5

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "format"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "type"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "pixels"

    invoke-virtual/range {p9 .. p9}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1

    const-string v0, "glTranslatef"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTranslatex(III)V
    .locals 1

    const-string v0, "glTranslatex"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "z"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 6

    const-string v0, "glVertexPointer"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mVertexPointer:Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper$PointerInfo;

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glViewport(IIII)V
    .locals 1

    const-string v0, "glViewport"

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "x"

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "y"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "width"

    invoke-direct {p0, v0, p3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->end()V

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;->checkError()V

    return-void
.end method

.method toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v1, 0x0

    if-gez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    instance-of v2, p2, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3

    check-cast p2, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    :goto_1
    if-lt v1, p1, :cond_2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    instance-of v2, p2, Ljava/nio/CharBuffer;

    if-eqz v2, :cond_6

    check-cast p2, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    mul-int/lit8 p1, v0, 0x2

    :cond_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    :goto_3
    div-int/lit8 v4, p1, 0x2

    if-lt v1, v4, :cond_5

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->get()C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    instance-of v2, p2, Ljava/nio/ShortBuffer;

    if-eqz v2, :cond_9

    check-cast p2, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    mul-int/lit8 p1, v0, 0x2

    :cond_7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->position()I

    move-result v3

    :goto_4
    div-int/lit8 v4, p1, 0x2

    if-lt v1, v4, :cond_8

    invoke-virtual {p2, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->get()S

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    instance-of v2, p2, Ljava/nio/IntBuffer;

    if-eqz v2, :cond_c

    check-cast p2, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    mul-int/lit8 p1, v0, 0x4

    :cond_a
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->position()I

    move-result v3

    :goto_5
    div-int/lit8 v4, p1, 0x4

    if-lt v1, v4, :cond_b

    invoke-virtual {p2, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    instance-of v2, p2, Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_f

    check-cast p2, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 p1, v0, 0x4

    :cond_d
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->position()I

    move-result v3

    :goto_6
    div-int/lit8 v4, p1, 0x4

    if-lt v1, v4, :cond_e

    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->get()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_f
    instance-of v2, p2, Ljava/nio/DoubleBuffer;

    if-eqz v2, :cond_12

    check-cast p2, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v0

    mul-int/lit8 p1, v0, 0x8

    :cond_10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->position()I

    move-result v3

    :goto_7
    div-int/lit8 v4, p1, 0x8

    if-lt v1, v4, :cond_11

    invoke-virtual {p2, v3}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    :cond_11
    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    instance-of v2, p2, Ljava/nio/LongBuffer;

    if-eqz v2, :cond_15

    check-cast p2, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Ljava/nio/LongBuffer;->limit()I

    move-result v0

    mul-int/lit8 p1, v0, 0x8

    :cond_13
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/LongBuffer;->position()I

    move-result v3

    :goto_8
    div-int/lit8 v4, p1, 0x8

    if-lt v1, v4, :cond_14

    invoke-virtual {p2, v3}, Ljava/nio/LongBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    :cond_14
    invoke-virtual {p2}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unimplemented Buffer subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
