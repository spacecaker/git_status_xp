.class public Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_FragmentShaderConstants_s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    .line 36
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 37
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mElement:Landroid/renderscript/Element;

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->init(Landroid/renderscript/RenderScript;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    .line 43
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 44
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mElement:Landroid/renderscript/Element;

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->init(Landroid/renderscript/RenderScript;II)V

    .line 46
    return-void
.end method

.method private copyToArray(Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 56
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 57
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;Landroid/renderscript/FieldPacker;)V
    .locals 1
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 49
    iget v0, p1, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;->fadeAmount:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 50
    iget v0, p1, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;->overallAlpha:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 51
    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 28
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 29
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "fadeAmount"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 30
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "overallAlpha"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 31
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .locals 4

    .prologue
    .line 117
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->copyToArray(Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_fadeAmount(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 108
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;->fadeAmount:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_overallAlpha(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 113
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;->overallAlpha:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .parameter "newSize"

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    if-eqz v3, :cond_2

    .line 123
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    array-length v2, v3

    .line 124
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 125
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 133
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    :try_start_1
    new-array v1, p1, [Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    .line 127
    .local v1, ni:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    .line 131
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 132
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    aput-object p1, v1, p2

    .line 62
    if-eqz p3, :cond_1

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->copyToArray(Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;I)V

    .line 64
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 65
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 66
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_1
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_fadeAmount(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;->fadeAmount:F

    .line 81
    if-eqz p3, :cond_3

    .line 82
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x8

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 83
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 84
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 85
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 86
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_overallAlpha(IFZ)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s$Item;->overallAlpha:F

    .line 96
    if-eqz p3, :cond_3

    .line 97
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x8

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 98
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 99
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 100
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 101
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_FragmentShaderConstants_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
