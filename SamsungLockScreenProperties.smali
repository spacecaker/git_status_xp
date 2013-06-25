.class public Lcom/android/internal/policy/impl/SamsungLockScreenProperties;
.super Ljava/lang/Object;
.source "SamsungLockScreenProperties.java"


# static fields
.field private static mAttSimLockChecked:Z

.field private static mAttSimLockMsgEnabled:Z

.field private static mChecked:Z

.field private static mShouldbeDisplaySalesCode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mAttSimLockMsgEnabled:Z

    .line 16
    sput-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mAttSimLockChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static isAttSimLockMsgEnable()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isAttSimLockMsgEnableForSalesCode()Z

    move-result v0

    return v0
.end method

.method private static isAttSimLockMsgEnableForSalesCode()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 65
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mAttSimLockChecked:Z

    if-nez v1, :cond_2

    .line 66
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mAttSimLockMsgEnabled:Z

    .line 73
    :cond_1
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mAttSimLockChecked:Z

    .line 75
    .end local v0           #SalesCode:Ljava/lang/String;
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mAttSimLockMsgEnabled:Z

    return v1
.end method

.method public static isPLMNEnable()Z
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isShouldbeDisplayForSalesCode()Z

    move-result v0

    return v0
.end method

.method private static isShouldbeDisplayForSalesCode()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 37
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    if-nez v1, :cond_2

    .line 38
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TLP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VAU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EPL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    .line 53
    :cond_1
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    .line 55
    .end local v0           #SalesCode:Ljava/lang/String;
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    return v1
.end method
