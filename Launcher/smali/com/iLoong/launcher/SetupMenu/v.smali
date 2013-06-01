.class Lcom/iLoong/launcher/SetupMenu/v;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5

    const/16 v1, 0x31

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/iLoong/launcher/SetupMenu/v;->c:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->b:Landroid/widget/TextView;

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->b:Landroid/widget/TextView;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v2}, Lcom/iLoong/launcher/SetupMenu/v;->setOrientation(I)V

    invoke-virtual {p0, v4}, Lcom/iLoong/launcher/SetupMenu/v;->setGravity(I)V

    :goto_0
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->getInstance()Lcom/iLoong/launcher/SetupMenu/SetupMenu;

    move-result-object v0

    iget v0, v0, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->mCellWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x4170

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/iLoong/launcher/SetupMenu/v;->setPadding(IIII)V

    :goto_1
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/v;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/v;->addView(Landroid/view/View;)V

    sget v0, Lcom/iLoong/launcher/Desktop3D/cb;->aH:I

    if-ne v0, v3, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->c:I

    :goto_2
    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/v;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v3}, Lcom/iLoong/launcher/SetupMenu/v;->setOrientation(I)V

    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/SetupMenu/v;->setGravity(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/iLoong/launcher/SetupMenu/v;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->c:I

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 5

    const/16 v4, 0xfa

    const/16 v3, 0xa5

    const/16 v2, 0x1e

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->a:Landroid/widget/ImageView;

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->b:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/v;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/v;->setEnabled(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/iLoong/launcher/SetupMenu/v;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public d()V
    .locals 2

    const v1, -0xbbbbbc

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/v;->setEnabled(Z)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/v;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
