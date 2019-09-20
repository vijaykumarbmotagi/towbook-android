.class final Landroid/databinding/adapters/CalendarViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "CalendarViewBindingAdapter.java"

# interfaces
.implements Landroid/widget/CalendarView$OnDateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/databinding/adapters/CalendarViewBindingAdapter;->setListeners(Landroid/widget/CalendarView;Landroid/widget/CalendarView$OnDateChangeListener;Landroid/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attrChange:Landroid/databinding/InverseBindingListener;

.field final synthetic val$onDayChange:Landroid/widget/CalendarView$OnDateChangeListener;


# direct methods
.method constructor <init>(Landroid/widget/CalendarView$OnDateChangeListener;Landroid/databinding/InverseBindingListener;)V
    .registers 3

    .line 48
    iput-object p1, p0, Landroid/databinding/adapters/CalendarViewBindingAdapter$1;->val$onDayChange:Landroid/widget/CalendarView$OnDateChangeListener;

    iput-object p2, p0, Landroid/databinding/adapters/CalendarViewBindingAdapter$1;->val$attrChange:Landroid/databinding/InverseBindingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedDayChange(Landroid/widget/CalendarView;III)V
    .registers 6

    .line 52
    iget-object v0, p0, Landroid/databinding/adapters/CalendarViewBindingAdapter$1;->val$onDayChange:Landroid/widget/CalendarView$OnDateChangeListener;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Landroid/databinding/adapters/CalendarViewBindingAdapter$1;->val$onDayChange:Landroid/widget/CalendarView$OnDateChangeListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/CalendarView$OnDateChangeListener;->onSelectedDayChange(Landroid/widget/CalendarView;III)V

    .line 55
    :cond_9
    iget-object p1, p0, Landroid/databinding/adapters/CalendarViewBindingAdapter$1;->val$attrChange:Landroid/databinding/InverseBindingListener;

    invoke-interface {p1}, Landroid/databinding/InverseBindingListener;->onChange()V

    return-void
.end method
