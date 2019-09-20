.class public Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field public lat:Ljava/lang/Double;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public lng:Ljava/lang/Double;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()Ljava/lang/Double;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;->lat:Ljava/lang/Double;

    return-object v0
.end method

.method public getLng()Ljava/lang/Double;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$Geometry$Location;->lng:Ljava/lang/Double;

    return-object v0
.end method
