.class public interface abstract Landroidx/work/impl/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final MAX_SCHEDULER_LIMIT:I = 0x32


# virtual methods
.method public abstract cancel(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public varargs abstract schedule([Landroidx/work/impl/model/WorkSpec;)V
.end method
