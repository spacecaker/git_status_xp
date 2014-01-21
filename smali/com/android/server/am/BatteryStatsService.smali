.class public Lcom/android/server/am/BatteryStatsService;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problems: \n\tThe import com.android.internal.app cannot be resolved\n\tIBatteryStats cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getService()LIBatteryStats;
    .locals 2

    .prologue
    .line 7
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unresolved compilation problem: \n\tIBatteryStats cannot be resolved to a type\n"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
