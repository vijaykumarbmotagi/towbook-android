.class Landroid/databinding/DataBinderMapperImpl$InnerBrLookup;
.super Ljava/lang/Object;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/DataBinderMapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerBrLookup"
.end annotation


# static fields
.field static sKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 21

    const-string v0, "_all"

    const-string v1, "act"

    const-string v2, "activity"

    const-string v3, "addressTypeAdapter"

    const-string v4, "auditActionVisibility"

    const-string v5, "auditDate"

    const-string v6, "auditUser"

    const-string v7, "auditVisibility"

    const-string v8, "call"

    const-string v9, "contact"

    const-string v10, "data"

    const-string v11, "lockActionVisibility"

    const-string v12, "lockUser"

    const-string v13, "lockVisibility"

    const-string v14, "model"

    const-string v15, "payment"

    const-string v16, "permit"

    const-string v17, "permitAddressAdapter"

    const-string v18, "permitTypeAdapter"

    const-string v19, "vehicleColorAdapter"

    const-string v20, "viewModel"

    .line 460
    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/databinding/DataBinderMapperImpl$InnerBrLookup;->sKeys:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
