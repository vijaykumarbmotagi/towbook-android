.class public final Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/LatLngBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzdg:D

.field private zzdh:D

.field private zzdi:D

.field private zzdj:D


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdg:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdh:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "no included points"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdg:D

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdh:D

    iget-wide v5, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0
.end method

.method public final include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdg:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdg:D

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdh:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdh:D

    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_21

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    goto :goto_5a

    :cond_21
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    cmpg-double p1, v2, v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz p1, :cond_38

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    cmpg-double p1, v4, v0

    if-gtz p1, :cond_45

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    cmpg-double p1, v0, v4

    if-gtz p1, :cond_45

    goto :goto_44

    :cond_38
    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    cmpg-double p1, v4, v0

    if-lez p1, :cond_44

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    cmpg-double p1, v0, v4

    if-gtz p1, :cond_45

    :cond_44
    :goto_44
    const/4 v2, 0x1

    :cond_45
    if-nez v2, :cond_5c

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->zzc(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    invoke-static {v4, v5, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->zzd(DD)D

    move-result-wide v4

    cmpg-double p1, v2, v4

    if-gez p1, :cond_5a

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdi:D

    return-object p0

    :cond_5a
    :goto_5a
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzdj:D

    :cond_5c
    return-object p0
.end method