.class Lcom/fourmob/datetimepicker/date/DayPickerView$1;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fourmob/datetimepicker/date/DayPickerView;->postSetSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fourmob/datetimepicker/date/DayPickerView;I)V
    .registers 3

    .line 167
    iput-object p1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$1;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iput p2, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$1;->this$0:Lcom/fourmob/datetimepicker/date/DayPickerView;

    iget v1, p0, Lcom/fourmob/datetimepicker/date/DayPickerView$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/date/DayPickerView;->setSelection(I)V

    return-void
.end method
