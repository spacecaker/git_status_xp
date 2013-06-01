.class public Lcom/iLoong/launcher/SetupMenu/l;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/l;->a:I

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/l;->b:I

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/l;->c:I

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/l;->d:I

    iput p1, p0, Lcom/iLoong/launcher/SetupMenu/l;->a:I

    iput p2, p0, Lcom/iLoong/launcher/SetupMenu/l;->b:I

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 2

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/l;->leftMargin:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/l;->rightMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/l;->width:I

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/l;->topMargin:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/l;->bottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/l;->height:I

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/l;->a:I

    add-int v1, p1, p3

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/l;->leftMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/l;->c:I

    iget v0, p0, Lcom/iLoong/launcher/SetupMenu/l;->b:I

    add-int v1, p2, p4

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/l;->topMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/l;->d:I

    return-void
.end method
