.class public Lcom/iLoong/launcher/Workspace/CellLayout;
.super Landroid/view/ViewGroup;


# instance fields
.field a:[I

.field b:[[Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private final n:Landroid/graphics/Rect;

.field private final o:Lcom/iLoong/launcher/Workspace/d;

.field private p:Landroid/graphics/RectF;

.field private q:Z

.field private final r:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iLoong/launcher/Workspace/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/iLoong/launcher/Workspace/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->n:Landroid/graphics/Rect;

    new-instance v0, Lcom/iLoong/launcher/Workspace/d;

    invoke-direct {v0}, Lcom/iLoong/launcher/Workspace/d;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->o:Lcom/iLoong/launcher/Workspace/d;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->a:[I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->p:Landroid/graphics/RectF;

    iput-boolean v2, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->q:Z

    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->d:I

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->e:I

    iput v2, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->f:I

    iput v2, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->g:I

    iput v2, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->h:I

    iput v2, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->i:I

    iput v3, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->j:I

    iput v3, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->k:I

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/Workspace/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->b:[[Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->j:I

    iget v1, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->k:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->b:[[Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->r:Landroid/app/WallpaperManager;

    return-void

    :cond_1
    iget v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->k:I

    iget v1, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->j:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout;->b:[[Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/iLoong/launcher/widget/c;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/CellLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/Workspace/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iLoong/launcher/widget/c;->a()Lcom/iLoong/launcher/a/c;

    move-result-object v2

    iget-object v2, v2, Lcom/iLoong/launcher/a/c;->c:Lcom/iLoong/launcher/widget/WidgetHostView;

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Workspace/CellLayout;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    move-object v0, p3

    check-cast v0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->g:Z

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;

    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/iLoong/launcher/Workspace/CellLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/Workspace/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;

    iget v4, v0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->e:I

    iget v5, v0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->f:I

    iget v6, v0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->width:I

    add-int/2addr v6, v4

    iget v0, v0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->height:I

    add-int/2addr v0, v5

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 22

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->j:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->k:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->f:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->g:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->h:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->i:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->d:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->e:I

    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->c:Z

    add-int/lit8 v3, v6, -0x1

    add-int/lit8 v12, v7, -0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->c:Z

    if-eqz v13, :cond_4

    sub-int v13, v19, v9

    sub-int v10, v13, v10

    mul-int/2addr v7, v5

    sub-int v7, v10, v7

    div-int/2addr v7, v12

    move-object/from16 v0, p0

    iput v7, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->m:I

    sub-int v7, v18, v8

    sub-int/2addr v7, v11

    mul-int/2addr v6, v4

    sub-int v6, v7, v6

    if-lez v3, :cond_3

    div-int v3, v6, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->l:I

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Workspace/CellLayout;->getChildCount()I

    move-result v20

    const/4 v3, 0x0

    move/from16 v17, v3

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/iLoong/launcher/Workspace/CellLayout;->setMeasuredDimension(II)V

    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->l:I

    goto :goto_1

    :cond_4
    sub-int v13, v18, v9

    sub-int v10, v13, v10

    mul-int/2addr v7, v4

    sub-int v7, v10, v7

    div-int/2addr v7, v12

    move-object/from16 v0, p0

    iput v7, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->l:I

    sub-int v7, v19, v8

    sub-int/2addr v7, v11

    mul-int/2addr v6, v5

    sub-int v6, v7, v6

    if-lez v3, :cond_5

    div-int v3, v6, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->m:I

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->m:I

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/Workspace/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->c:Z

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->l:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->m:I

    invoke-virtual/range {v3 .. v9}, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->a(IIIIII)V

    :goto_3
    iget-boolean v6, v3, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->g:Z

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/iLoong/launcher/Workspace/CellLayout;->getId()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    iget v7, v3, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->a:I

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iget v7, v3, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->b:I

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->g:Z

    :cond_7
    iget v6, v3, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->width:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v3, v3, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->height:I

    const/high16 v7, 0x4000

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->l:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/iLoong/launcher/Workspace/CellLayout;->m:I

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v15, v9

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->a(IIIIII)V

    goto :goto_3
.end method
