.class public Lcom/iLoong/launcher/cling/SimpleScreenIndicatorWidget;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/iLoong/launcher/cling/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setCurrentScreen(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/iLoong/launcher/cling/SimpleScreenIndicatorWidget;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/iLoong/launcher/cling/SimpleScreenIndicatorWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-ne v1, p1, :cond_1

    const v3, 0x7f020027

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const v3, 0x7f020026

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method
