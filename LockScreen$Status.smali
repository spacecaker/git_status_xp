.class final enum Lcom/android/internal/policy/impl/LockScreen$Status;
.super Ljava/lang/Enum;
.source "LockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/LockScreen$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum NetworkLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

.field public static final enum SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;


# instance fields
.field private final mShowStatusLines:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 299
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 304
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "NetworkLocked"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->NetworkLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 309
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "SimMissing"

    invoke-direct {v0, v1, v5, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 315
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "SimMissingLocked"

    invoke-direct {v0, v1, v6, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 321
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "SimPukLocked"

    invoke-direct {v0, v1, v7, v3}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 326
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    const-string v1, "SimLocked"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/policy/impl/LockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    .line 295
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/policy/impl/LockScreen$Status;

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->NetworkLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->ENUM$VALUES:[Lcom/android/internal/policy/impl/LockScreen$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 331
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/LockScreen$Status;->mShowStatusLines:Z

    .line 332
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/LockScreen$Status;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/policy/impl/LockScreen$Status;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/policy/impl/LockScreen$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$Status;->ENUM$VALUES:[Lcom/android/internal/policy/impl/LockScreen$Status;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public showStatusLines()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen$Status;->mShowStatusLines:Z

    return v0
.end method
