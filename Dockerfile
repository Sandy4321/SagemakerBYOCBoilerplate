FROM python:3.6

# Install necessary python packages
RUN pip install boto3
RUN pip install numpy
RUN pip install scipy
RUN pip install pandas
RUN pip install scikit-learn
RUN pip install opencv-python
RUN pip install matplotlib

# Set up the program in the image
COPY scripts  /opt/program/
ENV PATH="/opt/program:${PATH}"
WORKDIR /opt/program
