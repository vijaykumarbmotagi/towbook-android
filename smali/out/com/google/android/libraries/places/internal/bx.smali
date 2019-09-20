.class public final Lcom/google/android/libraries/places/internal/bx;
.super Lcom/google/android/libraries/places/internal/bc;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/internal/bx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/google/android/libraries/places/internal/by;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/by;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/bx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelUuid;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/bc;-><init>(Landroid/os/ParcelUuid;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->a()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
