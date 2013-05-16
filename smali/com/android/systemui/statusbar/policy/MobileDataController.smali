.class public Lcom/android/systemui/statusbar/policy/MobileDataController;
.super Ljava/lang/Object;
.source "MobileDataController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;

.field private mMobileData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V
    .locals 1
    .parameter "context"
    .parameter "checkbox"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->getMobileData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    .line 23
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mCheckBox:Landroid/widget/CompoundButton;

    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mMobileData:Z

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 25
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 26
    return-void
.end method

.method private getMobileData()Z
    .locals 3

    .prologue
    .line 34
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 35
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 29
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 30
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 31
    return-void
.end method
