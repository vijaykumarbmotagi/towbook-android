.class final Landroid/databinding/ObservableChar$1;
.super Ljava/lang/Object;
.source "ObservableChar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ObservableChar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/databinding/ObservableChar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/databinding/ObservableChar;
    .registers 3

    .line 107
    new-instance v0, Landroid/databinding/ObservableChar;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char p1, p1

    invoke-direct {v0, p1}, Landroid/databinding/ObservableChar;-><init>(C)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableChar$1;->createFromParcel(Landroid/os/Parcel;)Landroid/databinding/ObservableChar;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/databinding/ObservableChar;
    .registers 2

    .line 112
    new-array p1, p1, [Landroid/databinding/ObservableChar;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableChar$1;->newArray(I)[Landroid/databinding/ObservableChar;

    move-result-object p1

    return-object p1
.end method