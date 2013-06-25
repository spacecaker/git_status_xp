.class final enum Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
.super Ljava/lang/Enum;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

.field public static final enum LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

.field public static final enum UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const-string v1, "LockScreen"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 103
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const-string v1, "UnlockScreen"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->ENUM$VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->ENUM$VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
