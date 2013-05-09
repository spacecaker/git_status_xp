.class Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;
.super Landroid/os/Handler;
.source "PowerButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const v8, 0xffffff

    const/4 v5, 0x0

    .line 80
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIconView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$000(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 81
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIconView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$000(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget v7, v7, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIcon:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIndicatorView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$100(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 84
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIndicatorView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$100(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 86
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 88
    .local v3, res:Landroid/content/res/Resources;
    const-string v6, "expanded_hide_indicator"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v4, :cond_2

    .line 90
    .local v4, visible:Z
    :goto_0
    const v6, 0x1060012

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 92
    .local v0, colorMask:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIndicatorView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$100(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    iget v5, v5, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 102
    and-int v5, v0, v8

    const/high16 v6, 0x6000

    or-int v0, v5, v6

    .line 106
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/PowerButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerButton;->mIndicatorView:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$100(Lcom/android/systemui/statusbar/powerwidget/PowerButton;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02006d

    invoke-static {}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->access$200()Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    invoke-virtual {v6, v7, v0, v8}, Landroid/content/res/Resources;->getDrawable(IILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    .end local v0           #colorMask:I
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #visible:Z
    :cond_1
    return-void

    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #res:Landroid/content/res/Resources;
    :cond_2
    move v4, v5

    .line 88
    goto :goto_0

    .line 92
    .restart local v0       #colorMask:I
    .restart local v4       #visible:Z
    :cond_3
    const/16 v5, 0x8

    goto :goto_1

    .line 96
    :pswitch_0
    and-int v5, v0, v8

    const/high16 v6, -0x6000

    or-int v0, v5, v6

    .line 97
    goto :goto_2

    .line 99
    :pswitch_1
    and-int v5, v0, v8

    const/high16 v6, 0x3300

    or-int v0, v5, v6

    .line 100
    goto :goto_2

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
