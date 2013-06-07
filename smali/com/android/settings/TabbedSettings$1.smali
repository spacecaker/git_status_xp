.class Lcom/android/settings/TabbedSettings$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TabbedSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TabbedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TabbedSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/TabbedSettings$1;->this$0:Lcom/android/settings/TabbedSettings;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "tabId"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/settings/TabbedSettings$1;->this$0:Lcom/android/settings/TabbedSettings;

    iget-object v1, v1, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, currentView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/TabbedSettings$1;->this$0:Lcom/android/settings/TabbedSettings;

    iget-object v1, v1, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/TabbedSettings$1;->this$0:Lcom/android/settings/TabbedSettings;

    iget v2, v2, Lcom/android/settings/TabbedSettings;->currentTab:I

    if-le v1, v2, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/settings/TabbedSettings$1;->this$0:Lcom/android/settings/TabbedSettings;

    invoke-virtual {v1}, Lcom/android/settings/TabbedSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/android/settings/TabbedSettings$1;->this$0:Lcom/android/settings/TabbedSettings;

    iget-object v2, p0, Lcom/android/settings/TabbedSettings$1;->this$0:Lcom/android/settings/TabbedSettings;

    iget-object v2, v2, Lcom/android/settings/TabbedSettings;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    iput v2, v1, Lcom/android/settings/TabbedSettings;->currentTab:I

    .line 64
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TabbedSettings$1;->this$0:Lcom/android/settings/TabbedSettings;

    invoke-virtual {v1}, Lcom/android/settings/TabbedSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f0c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
