# Log Analyser Script
# Written by Ahmed — DevOps Training

DATE=$(date)
LOG_DIR=~/Documents/devops-practice/logs
REPORT_FILE=~/Documents/devops-practice/notes/log-report.txt

echo "================================" | tee $REPORT_FILE
echo "Log Analysis Report" | tee -a $REPORT_FILE
echo "Date: $DATE" | tee -a $REPORT_FILE
echo "================================" | tee -a $REPORT_FILE

for log in $LOG_DIR/*.log
do
echo "" | tee -a $REPORT_FILE
echo "Analysing: $log" | tee -a $REPORT_FILE
echo "---" | tee -a $REPORT_FILE

TOTAL=$(wc -l < $log)
echo "Total lines: $TOTAL" | tee -a $REPORT_FILE

ERRORS=$(grep -c "ERROR" $log 2>/dev/null || echo 0)
echo "Errors found: $ERRORS" | tee -a $REPORT_FILE

if [ $ERRORS -gt 0 ] 2>/dev/null; then
echo "Error details:" | tee -a $REPORT_FILE
grep "ERROR" $log | tee -a $REPORT_FILE
else
echo "No errors found" | tee -a $REPORT_FILE
fi
done

echo "" | tee -a $REPORT_FILE
echo "================================" | tee -a $REPORT_FILE
echo "Analysis Complete" | tee -a $REPORT_FILE
echo "Report saved to: $REPORT_FILE" | tee -a $REPORT_FILE
echo "================================" | tee -a $REPORT_FILE
EOF
