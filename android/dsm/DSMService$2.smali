.class final Landroid/dsm/DSMService$2;
.super Ljava/lang/Object;
.source "DSMService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dsm/DSMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9
    .parameter "location"

    .prologue
    .line 725
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 726
    .local v5, latitute:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 727
    .local v7, longitude:D
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    .line 728
    .local v1, Altitute:D
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v3

    .line 729
    .local v3, Bearing:F
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    .line 730
    .local v4, Speed:F
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 734
    .local v0, Accuracy:F
    sput-object p1, Landroid/dsm/DSMService;->Nloc:Landroid/location/Location;

    .line 735
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 738
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 741
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 744
    return-void
.end method
