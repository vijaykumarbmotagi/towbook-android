.class public Landroidx/work/impl/model/WorkName;
.super Ljava/lang/Object;
.source "WorkName.java"


# annotations
.annotation build Landroid/arch/persistence/room/Entity;
    foreignKeys = {
        .subannotation Landroid/arch/persistence/room/ForeignKey;
            childColumns = {
                "work_spec_id"
            }
            entity = Landroidx/work/impl/model/WorkSpec;
            onDelete = 0x5
            onUpdate = 0x5
            parentColumns = {
                "id"
            }
        .end subannotation
    }
    indices = {
        .subannotation Landroid/arch/persistence/room/Index;
            value = {
                "work_spec_id"
            }
        .end subannotation
    }
    primaryKeys = {
        "name",
        "work_spec_id"
    }
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final name:Ljava/lang/String;
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "name"
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final workSpecId:Ljava/lang/String;
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "work_spec_id"
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/work/impl/model/WorkName;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Landroidx/work/impl/model/WorkName;->workSpecId:Ljava/lang/String;

    return-void
.end method
