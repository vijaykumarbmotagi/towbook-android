.class public Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$PlusCode;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlusCode"
.end annotation


# instance fields
.field public compoundCode:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public globalCode:Ljava/lang/String;
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
.method public getCompoundCode()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$PlusCode;->compoundCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalCode()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/api/internal/impl/net/pablo/PlaceResult$PlusCode;->globalCode:Ljava/lang/String;

    return-object v0
.end method
