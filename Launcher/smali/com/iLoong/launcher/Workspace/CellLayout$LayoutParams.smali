.class public Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field public a:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public b:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public c:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public d:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field e:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field f:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field g:Z


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput p1, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->a:I

    iput p2, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->b:I

    iput p3, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->c:I

    iput p4, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->c:I

    iput v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->c:I

    iput v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->d:I

    return-void
.end method


# virtual methods
.method public a(IIIIII)V
    .locals 3

    iget v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->c:I

    iget v1, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->d:I

    iget v2, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->a:I

    iget v2, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->b:I

    sget-boolean v2, Lcom/iLoong/launcher/Desktop3D/cb;->bu:Z

    if-eqz v2, :cond_0

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->width:I

    mul-int v0, v1, p2

    iput v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->height:I

    :goto_0
    iget v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->a:I

    iput v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->e:I

    invoke-static {}, Lcom/iLoong/launcher/UI3DEngine/Utils3D;->getScreenHeight()I

    move-result v0

    iget v1, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->height:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->f:I

    return-void

    :cond_0
    sget v2, Lcom/iLoong/launcher/Desktop3D/at;->cn:I

    mul-int/2addr v0, v2

    iput v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->width:I

    sget v0, Lcom/iLoong/launcher/Desktop3D/at;->cp:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/Workspace/CellLayout$LayoutParams;->height:I

    goto :goto_0
.end method
