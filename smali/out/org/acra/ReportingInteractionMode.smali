.class public final enum Lorg/acra/ReportingInteractionMode;
.super Ljava/lang/Enum;
.source "ReportingInteractionMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/acra/ReportingInteractionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/acra/ReportingInteractionMode;

.field public static final enum DIALOG:Lorg/acra/ReportingInteractionMode;

.field public static final enum NOTIFICATION:Lorg/acra/ReportingInteractionMode;

.field public static final enum SILENT:Lorg/acra/ReportingInteractionMode;

.field public static final enum TOAST:Lorg/acra/ReportingInteractionMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 35
    new-instance v0, Lorg/acra/ReportingInteractionMode;

    const-string v1, "SILENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/acra/ReportingInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    .line 42
    new-instance v0, Lorg/acra/ReportingInteractionMode;

    const-string v1, "NOTIFICATION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/acra/ReportingInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    .line 47
    new-instance v0, Lorg/acra/ReportingInteractionMode;

    const-string v1, "TOAST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/acra/ReportingInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    .line 52
    new-instance v0, Lorg/acra/ReportingInteractionMode;

    const-string v1, "DIALOG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/acra/ReportingInteractionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    const/4 v0, 0x4

    .line 30
    new-array v0, v0, [Lorg/acra/ReportingInteractionMode;

    sget-object v1, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    aput-object v1, v0, v5

    sput-object v0, Lorg/acra/ReportingInteractionMode;->$VALUES:[Lorg/acra/ReportingInteractionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/ReportingInteractionMode;
    .registers 2

    .line 30
    const-class v0, Lorg/acra/ReportingInteractionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/acra/ReportingInteractionMode;

    return-object p0
.end method

.method public static values()[Lorg/acra/ReportingInteractionMode;
    .registers 1

    .line 30
    sget-object v0, Lorg/acra/ReportingInteractionMode;->$VALUES:[Lorg/acra/ReportingInteractionMode;

    invoke-virtual {v0}, [Lorg/acra/ReportingInteractionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/ReportingInteractionMode;

    return-object v0
.end method
